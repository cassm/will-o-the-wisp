#include <Adafruit_NeoPixel.h>
#include "math.h"

double phis[] = { 0.68068,  0.24435,  6.03884,  5.60250,  0.00000,
1.04720,  1.41372,  1.23918,  0.85521,  0.68068,
1.41372,  2.09439,  2.77507,  2.33874,  1.85005,
4.18879,  4.86947,  4.43313,  3.94444,  3.50811,
5.04400,  5.60250,  5.42797,  4.86947,  4.48550,
6.09120,  0.19198,  0.36652,  0.00000,  5.91666,
0.80285,  1.29154,  1.72787,  0.80285,  0.36652,
1.72788,  1.90241,  2.28638,  2.46091,  2.09439,
2.77510,  3.14159,  3.50810,  3.33360,  2.94960,
3.82230,  4.18880,  4.55530,  4.38080,  3.99680,
4.99164,  5.48033,  5.91666,  5.23599,  4.55531,
3.14159,  2.46091,  2.89725,  3.38594,  3.82227 };

double thetas[] = {0.73304,  1.13446,  1.01229,  0.34907,  0.24435,
0.83776,  0.90757,  1.62316,  1.74533,  1.16937,
0.48869,  0.00000,  5.79449,  5.89921,  0.38397,
6.03884,  5.93412,  5.27089,  5.14872,  5.55015,
0.00000,  1.30900,  2.47837,  3.80482,  4.97419,
1.39626,  1.39626,  1.85005,  2.26893,  2.18166,
2.04204,  2.07694,  2.84489,  2.87979,  2.47837,
1.83260,  0.66323,  5.61996,  4.45059,  3.14159,
5.37561,  5.44543,  5.11381,  4.53786,  4.66003,
4.88692,  4.88692,  4.10152,  4.01426,  4.43314,
3.52557,  2.75762,  2.65290,  3.14159,  3.63028,
3.40339,  3.43830,  4.20624,  4.24115,  3.80482 };

// Enable serial output
#define SERIAL_OUT	0
#define NEO_PIN		6  // NeoPixel DATA

// What type of NeoPixel strip is attached to the Arduino?
#define NEO_PTYPE	NEO_GRBW	// f.e. SK6812

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS	60

#define BRIGHTNESS	32

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
//   NEO_GRBW    Pixels are wired for GRBW bitstream (f.e. SK6812)
Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUMPIXELS, NEO_PIN, NEO_PTYPE + NEO_KHZ800);

// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
// and minimize distance between Arduino and first pixel.  Avoid connecting
// on a live circuit...if you must, connect GND first.

// NOTE: RGBW LEDs draw up to 80mA with all colors + white at full brightness!
// That means that a 60-pixel strip can draw up to 60x 80 = 4800mA, so you
// should use a 5A power supply; for a 144-pixel strip its max 11520mA = 12A!

double pi = 3.14159;

struct HSI {
    double h;
    double s;
    double i;
    int gamma;
};

struct RGBW {
    double r;
    double g;
    double b;
    double w;
};

int hsi2rgbw(struct HSI* hsi, struct RGBW* rgbw) {
    uint8_t r, g, b, w;
    double cos_h, cos_1047_h, H;
    hsi->h = fmod(hsi->h,2*pi); // cycle H around to 2*pi radians
    hsi->s = hsi->s>0?(hsi->s<1?hsi->s:1):0; // clamp S and I to interval [0,1]
    hsi->i = hsi->i>0?(hsi->i<1?hsi->i:1):0;
    
    H = hsi->h;

    if(H < 2.09439) {
        cos_h = cos(H);
        cos_1047_h = cos(1.047196667-H);
        r = hsi->s*255*hsi->i/3*(1+cos_h/cos_1047_h);
        g = hsi->s*255*hsi->i/3*(1+(1-cos_h/cos_1047_h));
        b = 0;
        w = 255*(1-hsi->s)*hsi->i;
    } else if(H < 4.188787) {
        H = H - 2.09439;
        cos_h = cos(H);
        cos_1047_h = cos(1.047196667-H);
        g = hsi->s*255*hsi->i/3*(1+cos_h/cos_1047_h);
        b = hsi->s*255*hsi->i/3*(1+(1-cos_h/cos_1047_h));
        r = 0;
        w = 255*(1-hsi->s)*hsi->i;
    } else {
        H = H - 4.188787;
        cos_h = cos(H);
        cos_1047_h = cos(1.047196667-H);
        b = hsi->s*255*hsi->i/3*(1+cos_h/cos_1047_h);
        r = hsi->s*255*hsi->i/3*(1+(1-cos_h/cos_1047_h));
        g = 0;
        w = 255*(1-hsi->s)*hsi->i;
    }

    rgbw->r = r;
    rgbw->g = g;
    rgbw->b = b;
    rgbw->w = w;
    
    return 0;
}

long long int iteration = 0;

void addSineWave(double *value, double ledPosition, double ledsPerCycle, double amplitude, double amplitudeShift, double phaseShift, double progressionSpeed) {
    double sineVal = sin(iteration*progressionSpeed + (ledPosition/ledsPerCycle)*2*pi + phaseShift);
    sineVal *= amplitude;
    sineVal += amplitudeShift;
    *value += sineVal;
}

float logNormalPDF (float x) {
    return (1/(x * sqrt(2*pi))) * exp(-1*(pow(log(x)/log(2),2)));
}

float doopsFunc (float x) {
    return 0.5*(sin(x)*exp(1.5*sin(x+pi/2)));
}

void setPixelColorFromHSI(int i, HSI *hsiVal) {
    struct RGBW rgbwVal;
    hsi2rgbw(hsiVal, &rgbwVal);
    strip.setPixelColor(i, rgbwVal.r, rgbwVal.g, rgbwVal.b, rgbwVal.w);
}

void waveFront (float phi, float speedFactor, float iteration, float hueOffset, HSI *result) {
    result->h = (2*pi - phi) - iteration*speedFactor + hueOffset;
    while (result->h < 0)
        result->h += (2*pi);

    result->s = abs(sin((phi + speedFactor*iteration) / 2));
    result->i = 0.75 * doopsFunc(phi + speedFactor*iteration) + 0.25;
}

void setup() {
  strip.begin(); // This initializes the NeoPixel library.
  strip.setBrightness(BRIGHTNESS); // set brightness
  strip.show(); // Initialize all pixels to 'off'

  delay(1000);
  Serial.begin(9600);
}

HSI hsiVals[NUMPIXELS];

void loop() {
    iteration++;
    struct HSI currentHsiVal;
    float speedFactor = 0.1;
    int numWaves = 2;

    if (Serial.available())
    {
        int newBrightness = Serial.read();
        while (Serial.available())
            Serial.read();
        if (newBrightness != 0)
            strip.setBrightness(newBrightness);
    }
    
    
    for (int i = 0; i < NUMPIXELS; i++) {
        float effectivePhi = phis[i];
        float effectiveTheta = thetas[i];

        //effectivePhi -= (int)(fmod(effectivePhi + iteration*speedFactor, 2*pi) / (2*pi/numWaves)) * (2*pi/numWaves);
        //effectiveTheta -= (int)(fmod(effectiveTheta + iteration*speedFactor, 2*pi) / (2*pi/numWaves)) * (2*pi/numWaves);
            
        //waveFront (effectivePhi, speedFactor, iteration, 15*pi/32, &currentHsiVal);

        currentHsiVal.i = (max(sin(effectiveTheta + speedFactor*iteration),0) * max(sin(effectivePhi + speedFactor*iteration*2),0) - 0.25) / 2;
        currentHsiVal.s=0;
        setPixelColorFromHSI (i, &currentHsiVal);
    }
    
    for (int i = 0; i < NUMPIXELS; i++) {
        //fadePixel (&hsiVals[i], 0.01, 0.05);
        //setPixelColorFromHSI (i, &hsiVals[i]);
    }
            
    strip.show();

    //delay(10);
}

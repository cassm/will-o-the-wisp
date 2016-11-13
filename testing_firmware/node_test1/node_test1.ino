#include <Adafruit_NeoPixel.h>
#include "math.h"

/*
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

float gamma[] = {  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,
0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,
0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,  0.00000,
0.00000,  0.00000,  0.00000,  0.00000,  0.00392,  0.00392,  0.00392,  0.00392,
0.00392,  0.00392,  0.00392,  0.00392,  0.00392,  0.00392,  0.00392,  0.00392,
0.00392,  0.00784,  0.00784,  0.00784,  0.00784,  0.00784,  0.00784,  0.00784,
0.00784,  0.01176,  0.01176,  0.01176,  0.01176,  0.01176,  0.01176,  0.01176,
0.01569,  0.01569,  0.01569,  0.01569,  0.01569,  0.01961,  0.01961,  0.01961,
0.01961,  0.02353,  0.02353,  0.02353,  0.02353,  0.02745,  0.02745,  0.02745,
0.02745,  0.03137,  0.03137,  0.03137,  0.03529,  0.03529,  0.03529,  0.03922,
0.03922,  0.03922,  0.04314,  0.04314,  0.04314,  0.04706,  0.04706,  0.05098,
0.05098,  0.05098,  0.05490,  0.05490,  0.05882,  0.05882,  0.06275,  0.06275,
0.06667,  0.06667,  0.07059,  0.07059,  0.07451,  0.07451,  0.07843,  0.07843,
0.08235,  0.08235,  0.08627,  0.08627,  0.09020,  0.09412,  0.09412,  0.09804,
0.09804,  0.10196,  0.10588,  0.10588,  0.10980,  0.11373,  0.11373,  0.11765,
0.12157,  0.12549,  0.12549,  0.12941,  0.13333,  0.13725,  0.13725,  0.14118,
0.14510,  0.14902,  0.15294,  0.15294,  0.15686,  0.16078,  0.16471,  0.16863,
0.17255,  0.17647,  0.18039,  0.18431,  0.18824,  0.19216,  0.19608,  0.19608,
0.20000,  0.20392,  0.21176,  0.21569,  0.21961,  0.22353,  0.22745,  0.23137,
0.23529,  0.23922,  0.24314,  0.24706,  0.25098,  0.25882,  0.26275,  0.26667,
0.27059,  0.27451,  0.28235,  0.28627,  0.29020,  0.29412,  0.30196,  0.30588,
0.30980,  0.31765,  0.32157,  0.32549,  0.33333,  0.33725,  0.34118,  0.34902,
0.35294,  0.36078,  0.36471,  0.37255,  0.37647,  0.38431,  0.38824,  0.39608,
0.40000,  0.40784,  0.41176,  0.41961,  0.42745,  0.43137,  0.43922,  0.44706,
0.45098,  0.45882,  0.46667,  0.47059,  0.47843,  0.48627,  0.49412,  0.49804,
0.50588,  0.51373,  0.52157,  0.52941,  0.53725,  0.54118,  0.54902,  0.55686,
0.56471,  0.57255,  0.58039,  0.58824,  0.59608,  0.60392,  0.61176,  0.61961,
0.62745,  0.63529,  0.64314,  0.65490,  0.66275,  0.67059,  0.67843,  0.68627,
0.69412,  0.70588,  0.71373,  0.72157,  0.72941,  0.74118,  0.74902,  0.75686,
0.76863,  0.77647,  0.78431,  0.79608,  0.80392,  0.81569,  0.82353,  0.83529,
0.84314,  0.85490,  0.86275,  0.87451,  0.88235,  0.89412,  0.90588,  0.91373,
0.92549,  0.93725,  0.94510,  0.95686,  0.96863,  0.97647,  0.98824,  1.00000 }; 
*/
uint8_t gamma[] = {
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,
    1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  2,  2,  2,
    2,  3,  3,  3,  3,  3,  3,  3,  4,  4,  4,  4,  4,  5,  5,  5,
    5,  6,  6,  6,  6,  7,  7,  7,  7,  8,  8,  8,  9,  9,  9, 10,
   10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 16, 16,
   17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 24, 24, 25,
   25, 26, 27, 27, 28, 29, 29, 30, 31, 32, 32, 33, 34, 35, 35, 36,
   37, 38, 39, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 50,
   51, 52, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68,
   69, 70, 72, 73, 74, 75, 77, 78, 79, 81, 82, 83, 85, 86, 87, 89,
   90, 92, 93, 95, 96, 98, 99,101,102,104,105,107,109,110,112,114,
  115,117,119,120,122,124,126,127,129,131,133,135,137,138,140,142,
  144,146,148,150,152,154,156,158,160,162,164,167,169,171,173,175,
  177,180,182,184,186,189,191,193,196,198,200,203,205,208,210,213,
  215,218,220,223,225,228,231,233,236,239,241,244,247,249,252,255 };

// Enable serial output
#define SERIAL_OUT	0
#define NEO_PIN		6  // NeoPixel DATA

// What type of NeoPixel strip is attached to the Arduino?
#define NEO_PTYPE	NEO_GRBW	// f.e. SK6812

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS	60

#define BRIGHTNESS	255

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
/*
void waveFront (float phi, float speedFactor, float iteration, float hueOffset, HSI *result) {
    result->h = (2*pi - phi) - iteration*speedFactor + hueOffset;
    while (result->h < 0)
        result->h += (2*pi);

    result->s = abs(sin((phi + speedFactor*iteration) / 2));
    result->i = 0.75 * doopsFunc(phi + speedFactor*iteration) + 0.25;
}
*/

void fadePixel (HSI *hsiVal, float fadeRate, float minIntensity) {
    float newIntensity = ((float)gamma[hsiVal->gamma]/255.0) + minIntensity;
    //float newIntensity = hsiVal->i > fadeRate+minIntensity ? hsiVal->i - fadeRate : minIntensity;
    float intensityReduction = hsiVal->i - newIntensity;
    if (intensityReduction > 0) {
        float saturationReduction = (intensityReduction/hsiVal->i) * hsiVal->s;
        hsiVal->s -= saturationReduction;
    }
    else {
        hsiVal->s -= hsiVal->s > fadeRate/5 ? fadeRate/5 : hsiVal->s;
    }
    hsiVal->i = newIntensity;
    if (hsiVal->gamma > 0)
        hsiVal->gamma--;
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
    int numWaves = 3;

/*
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

        effectivePhi -= (int)(fmod(effectivePhi + iteration*speedFactor, 2*pi) / (2*pi/numWaves)) * (2*pi/numWaves);
            
        waveFront (effectivePhi, speedFactor, iteration, 15*pi/32, &currentHsiVal);
        
        setPixelColorFromHSI (i, &currentHsiVal);
    }

    */
    static long int nextDropMillis = 0;
    long int currentMillis = millis();
    
    if (currentMillis > nextDropMillis) {
        nextDropMillis = currentMillis + (random()%1500);
        
        int newPixel = random(RAND_MAX) % NUMPIXELS;
        hsiVals[newPixel].s = (float)random(RAND_MAX)/((float)RAND_MAX*2);
        hsiVals[newPixel].h = (float)random(RAND_MAX)/((float)RAND_MAX/(2*pi));
        //hsiVals[newPixel].i = ((float)random(RAND_MAX)/((float)RAND_MAX*2)) + 0.5;
        hsiVals[newPixel].gamma = 255 - (random()%64); // 0.5 intensity or higher
    }
    
    for (int i = 0; i < NUMPIXELS; i++) {
        fadePixel (&hsiVals[i], 0.01, 0.05);
        setPixelColorFromHSI (i, &hsiVals[i]);
    }
            
    strip.show();

    //delay(10);
}

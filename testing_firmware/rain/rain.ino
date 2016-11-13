#include <OctoSK6812.h>
#include <math.h>

const int ledsPerStrip = 60;

// why multiply by 6? 2 bytes per colour??
DMAMEM int displayMemory[ledsPerStrip*8];
int drawingMemory[ledsPerStrip*8];

OctoSK6812 strip(ledsPerStrip, displayMemory, drawingMemory, SK6812_GRBW);

float minIntensity = 0.5;
int dropInterval = 1375;

uint8_t gammaVals[] = {
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
  90, 92, 93, 95, 96, 98, 99, 101, 102, 104, 105, 107, 109, 110, 112, 114,
  115, 117, 119, 120, 122, 124, 126, 127, 129, 131, 133, 135, 137, 138, 140, 142,
  144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 164, 167, 169, 171, 173, 175,
  177, 180, 182, 184, 186, 189, 191, 193, 196, 198, 200, 203, 205, 208, 210, 213,
  215, 218, 220, 223, 225, 228, 231, 233, 236, 239, 241, 244, 247, 249, 252, 255
};

// Enable serial output
#define SERIAL_OUT	0
#define NEO_PIN		6  // NeoPixel DATA

// What type of NeoPixel strip is attached to the Arduino?
#define NEO_PTYPE	NEO_GRBW	// f.e. SK6812


#define BRIGHTNESS	127

uint8_t currentBrightness = BRIGHTNESS;

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
  int gammaVals;
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
  hsi->h = fmod(hsi->h, 2 * pi); // cycle H around to 2*pi radians
  hsi->s = hsi->s > 0 ? (hsi->s < 1 ? hsi->s : 1) : 0; // clamp S and I to interval [0,1]
  hsi->i = hsi->i > 0 ? (hsi->i < 1 ? hsi->i : 1) : 0;

  H = hsi->h;

  if (H < 2.09439) {
    cos_h = cos(H);
    cos_1047_h = cos(1.047196667 - H);
    r = hsi->s * 255 * hsi->i / 3 * (1 + cos_h / cos_1047_h);
    g = hsi->s * 255 * hsi->i / 3 * (1 + (1 - cos_h / cos_1047_h));
    b = 0;
    w = 255 * (1 - hsi->s) * hsi->i;
  } else if (H < 4.188787) {
    H = H - 2.09439;
    cos_h = cos(H);
    cos_1047_h = cos(1.047196667 - H);
    g = hsi->s * 255 * hsi->i / 3 * (1 + cos_h / cos_1047_h);
    b = hsi->s * 255 * hsi->i / 3 * (1 + (1 - cos_h / cos_1047_h));
    r = 0;
    w = 255 * (1 - hsi->s) * hsi->i;
  } else {
    H = H - 4.188787;
    cos_h = cos(H);
    cos_1047_h = cos(1.047196667 - H);
    b = hsi->s * 255 * hsi->i / 3 * (1 + cos_h / cos_1047_h);
    r = hsi->s * 255 * hsi->i / 3 * (1 + (1 - cos_h / cos_1047_h));
    g = 0;
    w = 255 * (1 - hsi->s) * hsi->i;
  }

  rgbw->r = r;
  rgbw->g = g;
  rgbw->b = b;
  rgbw->w = w;

  return 0;
}

long long int iteration = 0;

void addSineWave(double *value, double ledPosition, double ledsPerCycle, double amplitude, double amplitudeShift, double phaseShift, double progressionSpeed) {
  double sineVal = sin(iteration * progressionSpeed + (ledPosition / ledsPerCycle) * 2 * pi + phaseShift);
  sineVal *= amplitude;
  sineVal += amplitudeShift;
  *value += sineVal;
}

float logNormalPDF (float x) {
  return (1 / (x * sqrt(2 * pi))) * exp(-1 * (pow(log(x) / log(2), 2)));
}

float doopsFunc (float x) {
  return 0.5 * (sin(x) * exp(1.5 * sin(x + pi / 2)));
}

void setPixelFromHSI(int i, HSI *hsiVal) {
  struct RGBW rgbwVal;
  hsi2rgbw(hsiVal, &rgbwVal);
  strip.setPixel(i, rgbwVal.r, rgbwVal.g, rgbwVal.b, rgbwVal.w);
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

void fadePixel (HSI *hsiVal, int fadeRate, float minIntensity) {
  float newIntensity = ((float)gammaVals[hsiVal->gammaVals] / 255.0) + minIntensity;
  //float newIntensity = hsiVal->i > fadeRate+minIntensity ? hsiVal->i - fadeRate : minIntensity;
  float intensityReduction = hsiVal->i - newIntensity;
  if (intensityReduction > 0) {
    float saturationReduction = (intensityReduction / hsiVal->i) * hsiVal->s;
    hsiVal->s -= saturationReduction;
  }
  else {
    float magicNumber = 0.002; // factor to keep step with gammaVals reduction more or less
    hsiVal->s -= hsiVal->s > fadeRate*magicNumber ? fadeRate*magicNumber : hsiVal->s;
  }
  hsiVal->i = newIntensity;
  if (hsiVal->gammaVals > fadeRate)
    hsiVal->gammaVals -= fadeRate;
  else
    hsiVal->gammaVals = 0;
}

void setup() {
  
  Serial.begin(9600);
  //Serial.println("Rain sketch with tap on-off");
  strip.begin(); // This initializes the NeoPixel library.
  //strip.setBrightness(BRIGHTNESS); // set brightness
  strip.show(); // Initialize all pixels to 'off'

  delay(1000);
}

HSI hsiVals[ledsPerStrip];

void loop() {
  iteration++;
  struct HSI currentHsiVal;
  float speedFactor = 0.1;
  int numWaves = 3;

  //byte interrupts = adxl.getInterruptSource();
//processInterrupts();
  
  static long int nextDropMillis = 0;
  long int currentMillis = millis();

  if (currentMillis > nextDropMillis) {
    nextDropMillis = currentMillis + (random() % dropInterval);

    int newPixel = random(RAND_MAX) % ledsPerStrip;
    hsiVals[newPixel].s = (float)random(RAND_MAX) / ((float)RAND_MAX * 1);
    hsiVals[newPixel].h = (float)random(RAND_MAX) / ((float)RAND_MAX / (2 * pi));
    //hsiVals[newPixel].i = ((float)random(RAND_MAX)/((float)RAND_MAX*2)) + 0.5;
    hsiVals[newPixel].gammaVals = 255 - (random() % 64); // 0.5 intensity or higher
  }

  for (int i = 0; i < ledsPerStrip; i++) {
    fadePixel (&hsiVals[i], min(6000/dropInterval,1), 0.05);
    setPixelFromHSI (i, &hsiVals[i]);
  }

  strip.show();

  //delay(10);
}

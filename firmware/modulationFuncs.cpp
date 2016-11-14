#include "modulationFuncs.h"
#include "gamma.h"

void fadePixel (HSI *hsiVal, int fadeRate, float minIntensity) {
  float newIntensity = ((float)gamma_table[hsiVal->gamma] / 255.0) + minIntensity;
  //float newIntensity = hsiVal->i > fadeRate+minIntensity ? hsiVal->i - fadeRate : minIntensity;
  float intensityReduction = hsiVal->i - newIntensity;
  if (intensityReduction > 0) {
    float saturationReduction = (intensityReduction / hsiVal->i) * hsiVal->s;
    hsiVal->s -= saturationReduction;
  }
  else {
    float magicNumber = 0.002; // factor to keep step with gamma_table reduction more or less
    hsiVal->s -= hsiVal->s > fadeRate*magicNumber ? fadeRate*magicNumber : hsiVal->s;
  }
  hsiVal->i = newIntensity;
  if (hsiVal->gamma > fadeRate)
    hsiVal->gamma -= fadeRate;
  else
    hsiVal->gamma = 0;
}

float logNormalPDF (float x) {
  return (1 / (x * sqrt(2 * pi))) * exp(-1 * (pow(log(x) / log(2), 2)));
}

float doopsFunc (float x) {
  return 0.5 * (sin(x) * exp(1.5 * sin(x + pi / 2)));
}

bool randomIntervalTimer (int eventInterval) {
  static long int nextEventMillis = 0;
  long int currentMillis = millis();

  if (currentMillis > nextEventMillis) {
    nextEventMillis = currentMillis + (random() % eventInterval);
    return true;
  }

  return false;
}

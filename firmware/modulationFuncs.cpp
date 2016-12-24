#include "modulationFuncs.h"
#include <Arduino.h>
#include <math.h>
#include "gamma.h"

long int nextEventMillis = 0;

void fadePixel (double *hsiVal, double minIntensity, double fadeRate) {
    float newIntensity = max(hsiVal[2] - fadeRate, minIntensity);
    float intensityReduction = hsiVal[2] - newIntensity;

    if (intensityReduction > 0) {
        float saturationReduction = (intensityReduction / hsiVal[2]) * hsiVal[1];
        hsiVal[1] -= saturationReduction;
    }
    else {
        hsiVal[1] -= hsiVal[1] > fadeRate ? fadeRate : hsiVal[1];
    }

    hsiVal[2] = newIntensity;
}

int fadePixel (uint16_t *rgbwVal, const uint16_t *targetVal, uint16_t fadeRate) {
    int finished = 1;

    for (int i = 0; i < 4; i++) {
        if (rgbwVal[i] > targetVal[i]) {
            finished = 0;

            if (rgbwVal[i] - fadeRate < targetVal[i]) {
                rgbwVal[i] = targetVal[i];
            }
            else {
                rgbwVal[i] -= fadeRate;
            }
        }
        else if (rgbwVal[i] < targetVal[i]) {
            finished = 0;

            if (rgbwVal[i] + fadeRate > targetVal[i]) {
                rgbwVal[i] = targetVal[i];
            }
            else {
                rgbwVal[i] += fadeRate;
            }
        }
    }

    return finished;
}

float logNormalPDF (float x) {
  return (1 / (x * sqrt(2 * M_PI))) * exp(-1 * (pow(log(x) / log(2), 2)));
}

float doopsFunc (float x) {
  return 0.5 * (sin(x) * exp(1.5 * sin(x + M_PI / 2)));
}

bool randomIntervalTimer (int eventInterval) {
  long int currentMillis = millis();

  if (currentMillis > nextEventMillis) {
    nextEventMillis = currentMillis + (random() % eventInterval);
    return true;
  }

  return false;
}

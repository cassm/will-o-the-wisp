#ifndef MODULATION_FUNCS_H
#define MODULATION_FUNCS_H

#include "hsi.h"

void fadePixel (double *hsiVal, double minIntensity, double fadeRate);
int fadePixel (uint16_t *rgbwVal, const uint16_t *targetVal, uint16_t fadeRate);
float logNormalPDF (float x);
float doopsFunc (float x);
bool randomIntervalTimer (int eventInterval);

#endif

#ifndef MODULATION_FUNCS_H
#define MODULATION_FUNCS_H

#include "hsi.h"

void fadePixel (HSI *hsiVal, int fadeRate, float minIntensity);
float logNormalPDF (float x);
float doopsFunc (float x);
bool randomIntervalTimer (int eventInterval);

#endif

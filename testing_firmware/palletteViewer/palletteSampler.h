#ifndef PALLETTE_SAMPLER_H
#define PALLETTE_SAMPLER_H

#include <stdint.h>

void linearInterpolate (uint16_t pallette[][4], int palletteLength, double index, uint16_t *sample, int gammaCorrection);

// use a wrapper function in case we want to add further interpolation options later
void getPalletteSampleRgbw (uint16_t pallette[][4], int palletteLength, double index, uint16_t *sample);

#endif

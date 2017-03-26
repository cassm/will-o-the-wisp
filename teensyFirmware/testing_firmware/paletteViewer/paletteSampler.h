#ifndef PALETTE_SAMPLER_H
#define PALETTE_SAMPLER_H

#include <stdint.h>

void linearInterpolate (uint16_t palette[][4], int paletteLength, double index, uint16_t *sample, int gammaCorrection);

// use a wrapper function in case we want to add further interpolation options later
void getPaletteSampleRgbw (uint16_t palette[][4], int paletteLength, double index, uint16_t *sample);

#endif

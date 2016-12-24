#ifndef PALETTE_SAMPLER_H
#define PALETTE_SAMPLER_H

#include <stdint.h>

void linearInterpolate (const uint16_t palette[][4], int paletteLength, double index, uint16_t *sample);

// use a wrapper function in case we want to add further interpolation options later
void getPaletteSample (const uint16_t palette[][4], int paletteLength, double index, uint16_t *sample, bool interpolate, bool gammaCorrection);

#endif

#include <math.h>
#include "paletteSampler.h"
#include "gamma.h"

void linearInterpolate (const uint16_t fromVal[4], const uint16_t toVal[4], double index, uint16_t *sample, bool gammaCorrection) {
    // four colour channels
    for (int i = 0; i < 4; i++) {
        double interpolation = ((1-index) * fromVal[i]) + (index * toVal[i]);
        if (gammaCorrection) {
            sample[i] = gamma_table[(uint16_t)interpolation];
        }
        else {
            sample[i] = (uint16_t)interpolation;
        }
    }
}

// use a wrapper function in case we want to add further interpolation options later
void getPaletteSample (const uint16_t palette[][4], int paletteLength, double index, uint16_t *sample, bool interpolate, bool gammaCorrection) {
    while (index < 0) {
        index += paletteLength;
    }
    index = fmod(index, paletteLength);

    int fromIndex = floor(index);
    int toIndex = ceil(index);
    
    if (interpolate) {
       linearInterpolate (palette[fromIndex], palette[toIndex], fmod(index, 1), sample, gammaCorrection);
    }

    else {
        for (int i = 0; i < 4; i++) {
            sample[i] = palette[fromIndex][i];
        }
    }
}

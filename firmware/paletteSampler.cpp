#include <math.h>
#include "paletteSampler.h"
#include "gamma.h"

void linearInterpolate (uint16_t palette[][4], int paletteLength, double index, uint16_t *sample, bool gammaCorrection) {
    // handle with negative indices
    while (index < 0)
        index += paletteLength;

    index = fmod(index, paletteLength);
    
    int lowerIndex = floor(index);
    int upperIndex = ceil(index);

    // handle wrap case
    if (upperIndex == paletteLength)
        upperIndex = 0;

    double interpolation, ratio = index - lowerIndex;

    // pinched from smoothstep algorithm
    //ratio = (ratio) * (ratio) * (3 - 2 * (ratio));

    // four colour channels
    for (int i = 0; i < 4; i++) {
        interpolation = ((1-ratio) * palette[lowerIndex][i]) + (ratio * palette[upperIndex][i]);
        if (gammaCorrection) {
            sample[i] = gamma_table[(uint16_t)interpolation];
        }
        else {
            sample[i] = (uint16_t)interpolation;
        }
    }
}

// use a wrapper function in case we want to add further interpolation options later
void getPaletteSample (uint16_t palette[][4], int paletteLength, double index, uint16_t *sample, bool interpolate, bool gammaCorrection) {
    if (interpolate) {
       linearInterpolate (palette, paletteLength, index, sample, gammaCorrection);
    }

    else {
        int intIndex = index;
        intIndex %= paletteLength;

        for (int i = 0; i < 4; i++) {
            sample[i] = palette[intIndex][i];
        }
    }
}


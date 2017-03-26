#include <math.h>
#include "paletteSampler.h"
#include "gamma.h"

void linearInterpolate (uint16_t palette[][4], int paletteLength, double index, uint16_t *sample, int gammaCorrection) {
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
        if (gammaCorrection) {
            interpolation = ((1-ratio) * gamma_table[palette[lowerIndex][i]]) + (ratio * gamma_table[palette[upperIndex][i]]);
        }
        else {
            interpolation = ((1-ratio) * palette[lowerIndex][i]) + (ratio * palette[upperIndex][i]);
        }
        sample[i] = (uint16_t)interpolation;
    }
}


// use a wrapper function in case we want to add further interpolation options later
void getPaletteSampleRgbw (uint16_t palette[][4], int paletteLength, double index, uint16_t *sample) {
    linearInterpolate (palette, paletteLength, index, sample, 0);
}


#include <math.h>
#include "palletteSampler.h"
#include "gamma.h"

void linearInterpolate (uint16_t pallette[][4], int palletteLength, double index, uint16_t *sample, int gammaCorrection) {
    // handle with negative indices
    while (index < 0)
        index += palletteLength;

    index = fmod(index, palletteLength);
    
    int lowerIndex = floor(index);
    int upperIndex = ceil(index);

    // handle wrap case
    if (upperIndex == palletteLength)
        upperIndex = 0;

    double interpolation, ratio = index - lowerIndex;

    // pinched from smoothstep algorithm
    //ratio = (ratio) * (ratio) * (3 - 2 * (ratio));

    // four colour channels
    for (int i = 0; i < 4; i++) {
        if (gammaCorrection) {
            interpolation = ((1-ratio) * gamma_table[pallette[lowerIndex][i]]) + (ratio * gamma_table[pallette[upperIndex][i]]);
        }
        else {
            interpolation = ((1-ratio) * pallette[lowerIndex][i]) + (ratio * pallette[upperIndex][i]);
        }
        sample[i] = (uint16_t)interpolation;
    }
}


// use a wrapper function in case we want to add further interpolation options later
void getPalletteSampleRgbw (uint16_t pallette[][4], int palletteLength, double index, uint16_t *sample) {
    linearInterpolate (pallette, palletteLength, index, sample, 0);
}


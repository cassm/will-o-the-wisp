#ifndef CORRECTION_H
#define CORRECTION_H

#include <stdint.h>
#include "gamma.h"

// FIXME: how to colour correction? Do we even have to? Seems ok.
//double correctionFactors[] = {0.52, 0.31, 1, 0.8};
//double correctionFactors[] = {0.62, 0.40, 1, 1};
//double correctionFactors[] = {0.73, 0.50, 1, 0.8};
//double correctionFactors[] = {0.94, 0.69, 1, 0.8};
double correctionFactors[] = {1, 1, 1, 1};

void colourCorrect (uint16_t *rgbwVal) {
    for (int i = 0; i < 4; i++) {
        rgbwVal[i] *= correctionFactors[i];
    }
}

void gammaCorrect (uint16_t *rgbwVal) {
    for (int i = 0; i < 4; i++) {
        rgbwVal[i] = gamma_table[rgbwVal[i]];
    }
}

void rescale (uint16_t *rgbwVal) {
    for (int i = 0; i < 4; i++) {
        rgbwVal[i] /= 4;
    }
}

#endif

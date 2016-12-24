#ifndef CORRECTION_H
#define CORRECTION_H

#include <stdint.h>
#include "gamma.h"

// correct for non-uniform brightness of LED channels
double correctionFactors[] = {1, 0.6, 1, 1};

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

void gammaCorrect (uint16_t *rgbwVal, float brightnessVal) {
    float brightnessFactor = brightnessVal / 1024;
    for (int i = 0; i < 4; i++) {
        rgbwVal[i] = (int)(gamma_table[(int)(rgbwVal[i]*brightnessFactor)]);
    }
}

void gammaCorrect (uint16_t *rgbwVal, uint16_t *outputVal) {
    for (int i = 0; i < 4; i++) {
        outputVal[i] = gamma_table[rgbwVal[i]];
    }
}

void gammaCorrect (uint16_t *rgbwVal, uint16_t *outputVal, float brightnessVal) {
    float brightnessFactor = brightnessVal / 1024;
    for (int i = 0; i < 4; i++) {
        outputVal[i] = (int)(gamma_table[(int)(rgbwVal[i]*brightnessFactor)]);
    }
}

void rescale (uint16_t *rgbwVal) {
    for (int i = 0; i < 4; i++) {
        rgbwVal[i] /= 4;
    }
}

void rescale (uint16_t *rgbwVal, uint16_t *outputVal) {
    for (int i = 0; i < 4; i++) {
        outputVal[i] = rgbwVal[i] / 4;
    }
}

#endif

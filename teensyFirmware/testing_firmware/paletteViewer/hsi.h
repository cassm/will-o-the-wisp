#ifndef HSI_H
#define HSI_H

#include <stdint.h>

struct HSI {
  double h;
  double s;
  double i;
  int gammaVals;
};

// uint16_t as we are using 10 bit colour depth
int hsi2rgbw(struct HSI* hsi, uint16_t *rgbwVal);

#endif

#include "hsi.h"
#include <math.h>

const double pi = 3.1416;

int hsi2rgbw(struct HSI* hsi, uint16_t* rgbwVal) {
  uint16_t r, g, b, w;
  double cos_h, cos_1047_h, H;
  hsi->h = fmod(hsi->h, 2 * pi); // cycle H around to 2*pi radians
  hsi->s = hsi->s > 0 ? (hsi->s < 1 ? hsi->s : 1) : 0; // clamp S and I to interval [0,1]
  hsi->i = hsi->i > 0 ? (hsi->i < 1 ? hsi->i : 1) : 0;

  H = hsi->h;

  if (H < 2.09439) {
    cos_h = cos(H);
    cos_1047_h = cos(1.047196667 - H);
    r = hsi->s * 1023 * hsi->i / 3 * (1 + cos_h / cos_1047_h);
    g = hsi->s * 1023 * hsi->i / 3 * (1 + (1 - cos_h / cos_1047_h));
    b = 0;
    w = 255 * (1 - hsi->s) * hsi->i;
  } else if (H < 4.188787) {
    H = H - 2.09439;
    cos_h = cos(H);
    cos_1047_h = cos(1.047196667 - H);
    g = hsi->s * 1023 * hsi->i / 3 * (1 + cos_h / cos_1047_h);
    b = hsi->s * 1023 * hsi->i / 3 * (1 + (1 - cos_h / cos_1047_h));
    r = 0;
    w = 255 * (1 - hsi->s) * hsi->i;
  } else {
    H = H - 4.188787;
    cos_h = cos(H);
    cos_1047_h = cos(1.047196667 - H);
    b = hsi->s * 1023 * hsi->i / 3 * (1 + cos_h / cos_1047_h);
    r = hsi->s * 1023 * hsi->i / 3 * (1 + (1 - cos_h / cos_1047_h));
    g = 0;
    w = 1023 * (1 - hsi->s) * hsi->i;
  }

  rgbwVal[0] = r;
  rgbwVal[1] = g;
  rgbwVal[2] = b;
  rgbwVal[3] = w;

  return 0;
}

#include <math.h>
#include <stdint.h>
#include "OctoSK6812.h"
#include "paletteSampler.h"
#include "correction.h"
#include "coords.h"

#include "unicornBarf_palette.h"
#include "stressTest_palette.h"

const int ledsPerStrip = 60;
const double speedFactor = 1;

long long unsigned int iteration;

DMAMEM int displayMemory[ledsPerStrip*8];

int drawingMemory0[ledsPerStrip*8];
int drawingMemory1[ledsPerStrip*8];
OctoSK6812 strip(ledsPerStrip, displayMemory, drawingMemory0, drawingMemory1, SK6812_GRBW);


void setup() {
  Serial.begin(38400);
  strip.begin(); // This initializes the NeoPixel library.
  strip.show(0); // Initialize all pixels to 'off'

  iteration = 0;
  delay(1000);
}

void loop() {
  uint16_t currentRgbwVal[4];
  int i;
  
  iteration++;

  for (i = 0; i < ledsPerStrip; i++) {
      getPaletteSample(stressTestRgbwPalette, stressTestPaletteLen, (speedFactor * iteration), currentRgbwVal, true, true);

      //colourCorrect(currentRgbwVal);

      // note: as we are using 10-bit colour depth, you must either call gammaCorrect() or rescale() before setting the pixel
      rescale(currentRgbwVal);
      //gammaCorrect (currentRgbwVal);

      strip.setPixel(i, currentRgbwVal, iteration%2);

      if (iteration == 0) {
          strip.setPixel(i, currentRgbwVal, 1);
      }
  }

  strip.dither(iteration%2);
}

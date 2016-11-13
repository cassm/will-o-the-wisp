#include <math.h>
#include <stdint.h>
#include "OctoSK6812.h"
#include "palletteSampler.h"
#include "correction.h"
#include "coords.h"

#include "unicornBarf_pallette.h"

const int ledsPerStrip = 60;
const double speedFactor = 0.05;
long long unsigned int iteration;

DMAMEM int displayMemory[ledsPerStrip*8];
int drawingMemory[ledsPerStrip*8];
OctoSK6812 strip(ledsPerStrip, displayMemory, drawingMemory, SK6812_GRBW);


void setup() {
  Serial.begin(38400);
  strip.begin(); // This initializes the NeoPixel library.
  strip.show(); // Initialize all pixels to 'off'

  iteration = 0;
  delay(1000);

}

void loop() {
  uint16_t currentRgbwVal[4];
  int i;
  
  iteration++;

  for (i = 0; i < ledsPerStrip; i++) {
      getPalletteSampleRgbw(unicornBarfPallette, unicornBarfPalletteLen, getX(i) + (speedFactor * iteration), currentRgbwVal);
      
      colourCorrect(currentRgbwVal);
      // note: as we are using 10-bit colour depth, you must either call gammaCorrect() or rescale() before setting the pixel
      gammaCorrect (currentRgbwVal);
      
      strip.setPixel(i, currentRgbwVal);
  }
  strip.show();

  //delay(10);
}

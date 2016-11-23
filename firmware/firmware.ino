#include <math.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "OctoSK6812.h"
#include "paletteSampler.h"
#include "correction.h"
#include "coords.h"

#include "unicornBarf_palette.h"
#include "stressTest_palette.h"

#define PinInt1 23

const int ledsPerStrip = 60;
const double speedFactor = 1;
volatile int patternNumber = 0;

long long unsigned int iteration;

DMAMEM int displayMemory[ledsPerStrip*8];

int drawingMemory0[ledsPerStrip*8];
int drawingMemory1[ledsPerStrip*8];
OctoSK6812 strip(ledsPerStrip, displayMemory, drawingMemory0, drawingMemory1, SK6812_GRBW);

void patternChangeIsr () {
    patternNumber++;
    if (patternNumber > 1) {
        patternNumber = 0;
    }
}

void setup() {
  Serial.begin(38400);
  strip.begin(); // This initializes the NeoPixel library.
  strip.show(0); // Initialize all pixels to 'off'

  pinMode(PinInt1, INPUT); // sets the digital pin as output
  attachInterrupt(PinInt1, patternChangeIsr, RISING);

  iteration = 0;
  delay(1000);
}

void loop() {
  uint16_t currentRgbwVal[4];
  int i;
  
  iteration++;

  switch (patternNumber) {
  default:
  case 0: for (i = 0; i < ledsPerStrip; i++) {
              uint16_t sampleRgbwVal[4];

              getPaletteSample(unicornBarfRgbwPalette, unicornBarfPaletteLen, (speedFactor * iteration * 1), sampleRgbwVal, true, false);

              double paletteMixLevel = sin((-1*getX(i))+iteration*speedFactor*0.05 - 0.5) + 1;
              currentRgbwVal[0] = (paletteMixLevel * sampleRgbwVal[0] / 2);
              currentRgbwVal[1] = (paletteMixLevel * sampleRgbwVal[1] / 2);
              currentRgbwVal[2] = (paletteMixLevel * sampleRgbwVal[2] / 2);
              currentRgbwVal[3] = (((sin((-1*getX(i))+iteration*speedFactor*0.05) + 1) * 0.75 + 0.25) * 511);

              gammaCorrect (currentRgbwVal);
    
              strip.setPixel(i, currentRgbwVal, 0);
    
              if (iteration == 0) {
                  strip.setPixel(i, currentRgbwVal, 1);
              }
          }
      
          strip.show(0);
          break;

  case 1: for (i = 0; i < ledsPerStrip; i++) {
              getPaletteSample(stressTestRgbwPalette, stressTestPaletteLen, getX(i)*2 + (speedFactor * iteration), currentRgbwVal, true, true);
              //getPaletteSample(unicornBarfRgbwPalette, unicornBarfPaletteLen, getX(i)*2 + (speedFactor * iteration), currentRgbwVal, true, true);
    
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
          break;
  }
}

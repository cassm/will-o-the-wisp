/*Required Connections
  --------------------
    pin 2:  LED Strip #1    OctoWS2811 drives 8 LED Strips.
    pin 14: LED strip #2    All 8 are the same length.
    pin 7:  LED strip #3
    pin 8:  LED strip #4    A 100 ohm resistor should used
    pin 6:  LED strip #5    between each Teensy pin and the
    pin 20: LED strip #6    wire to the LED strip, to minimize
    pin 21: LED strip #7    high frequency ringining & noise.
    pin 5:  LED strip #8
    pin 15 & 16 - Connect together, but do not use
    pin 4 - Do not use
    pin 3 - Do not use as PWM.  Normal use is ok.
*/

#include "OctoSK6812.h"

const int ledsPerStrip = 60;

// why multiply by 6? 2 bytes per colour??
DMAMEM int displayMemory[ledsPerStrip*8];
int drawingMemory[ledsPerStrip*8];

OctoSK6812 leds(ledsPerStrip, displayMemory, drawingMemory, SK6812_GRBW);

void setup() {
  // put your setup code here, to run once:
  leds.begin();
  leds.show();

  leds.setPixel(0, 0xFF000000);
  leds.setPixel(1, 0x00FF0000);
  leds.setPixel(2, 0x0000FF00);
  leds.setPixel(3, 0x000000FF);
  leds.setPixel(4, 0xFFFFFFFF);
  leds.show();
  delay(5000);
}

#define RED    0xFF000000
#define GREEN  0x00FF0000
#define BLUE   0x0000FF00
#define YELLOW 0xFFFF0000
#define PINK   0xFF108800
#define ORANGE 0xE0580000
#define WHITE  0x000000FF

void loop() {
  int microsec = 2000000 / leds.numPixels();  // change them all in 2 seconds

  // uncomment for voltage controlled speed
  // millisec = analogRead(A9) / 40;

  colorWipe(RED, microsec);
  colorWipe(GREEN, microsec);
  colorWipe(BLUE, microsec);
  colorWipe(WHITE, microsec);
  colorWipe(YELLOW, microsec);
  colorWipe(PINK, microsec);
  colorWipe(ORANGE, microsec);
  colorWipe(0xFFFFFFFF, microsec);
}

void colorWipe(int color, int wait)
{
  for (int i=0; i < leds.numPixels(); i++) {
    leds.setPixel(i, color);
    leds.show();
    delayMicroseconds(wait);
  }
}

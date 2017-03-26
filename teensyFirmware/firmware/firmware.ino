#include <math.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "OctoSK6812.h"
#include "modulationFuncs.h"
#include "paletteSampler.h"
#include "correction.h"
#include "coords.h"
#include <cmath>

#include "unicornBarf_palette.h"
#include "stressTest_palette.h"
#include "fire_palette.h"

////////////// CONFIG SECTION ///////////////

#define BRIGHTNESS_POT   0
#define SERIAL_COMMANDS  1
#define FORM_FACTOR      TUBE

#define modeSwitchPin 23
#define analogueBrightnessPin 8

/////////////////////////////////////////////

const int ledsPerStrip = 31;
double speedFactor = 0.5;
volatile int patternNumber = 0;
long long unsigned int lastDebounceTime = 0;
int debounceInterval = 200;
float brightnessVal = 512;
int on = 1;
bool awaitingBrightnessVal = false;
bool awaitingSpeedVal = false;

long long unsigned int iteration;

int drawingMemory0[ledsPerStrip*8];
int drawingMemory1[ledsPerStrip*8];
DMAMEM int displayMemory[ledsPerStrip*8];

OctoSK6812 strip(ledsPerStrip, displayMemory, drawingMemory0, drawingMemory1, SK6812_GRBW);

uint16_t rgbwVals[ledsPerStrip][4] = { { 0 } };

void patternChangeIsr () {
    Serial.println("INTERRUPT");
    long long unsigned int currentTime = millis();
    if (currentTime < (lastDebounceTime + debounceInterval)) {
        return;
    }
    lastDebounceTime = currentTime;

    patternNumber++;
    if (patternNumber > 4) {
        patternNumber = 0;
    }
}

void setup() {
  Serial.begin(38400);
  strip.begin(); // This initializes the NeoPixel library.
  strip.show(0); // Initialize all pixels to 'off'

  pinMode(modeSwitchPin, INPUT); // sets the digital pin as output
  attachInterrupt(modeSwitchPin, patternChangeIsr, RISING);

  iteration = 0;
  delay(500);
}

void processSerialInput (uint8_t opcode) {
    if (awaitingBrightnessVal) {
        brightnessVal = opcode * 4; // convert to 10 bit
        awaitingBrightnessVal = false;
        return;
    }

    if (awaitingSpeedVal) {
        speedFactor = (float)255/opcode;
        awaitingSpeedVal = false;
        return;
    }

    switch (opcode) {
        default: break; // ignore unrecognised characters

        case ('b'): awaitingBrightnessVal = true;
                    break;

        case ('s'): awaitingSpeedVal = true;
                    break;

        case ('F'): patternNumber = 0; // fire
                    break;

        case ('R'): patternNumber = 1; // rain
                    break;

        case ('S'): patternNumber = 2; // star drive
                    break;

        case ('U'): patternNumber = 3; // unicorn Barf
                    break;

        case ('T'): patternNumber = 4; // stress test
                    break;

        case ('O'): on = !on; // toggle on/off
                    break;
    }
}

void starDrive (uint16_t pixel[4], double pixelPosition, const uint16_t palette[][4], int paletteLength) {
    uint16_t sampleVal[4];
    double paletteMixLevel = sin(pixelPosition+iteration*speedFactor*0.05 - 0.5) + 1;

    getPaletteSample(palette, paletteLength, (speedFactor * iteration), sampleVal, true, false);

    pixel[0] = (paletteMixLevel * sampleVal[0] / 2);
    pixel[1] = (paletteMixLevel * sampleVal[1] / 2);
    pixel[2] = (paletteMixLevel * sampleVal[2] / 2);
    pixel[3] = (((sin(pixelPosition+iteration*speedFactor*0.05) + 1) * 0.75 + 0.25) * 511);
}

void loop() {
    int i;
    uint16_t rainSetPoint[] = {256, 0, 0, 256};
    uint16_t outputVal[4];
    float fireIndex, sinOffset;
    int fireOffset;

    iteration++;

#if SERIAL_COMMANDS
    if (Serial.peek() != -1) {
        processSerialInput(Serial.read());
    }
#endif

#if BRIGHTNESS_POT
    float val = analogRead(analogueBrightnessPin);
    brightnessVal = 7*(brightnessVal/8) + (val/8); // smooth values
#endif

    if (!on) {
        for (i = 0; i < ledsPerStrip; i++) {
            for (int j = 0; j < 4; j++) {
                rgbwVals[i][j] = 0;
            }
            strip.setPixel(i, 0, 0, 0, 0, 0);
        }

        strip.show(0);
        while (!on) {
            delay (200); // check 5 times a second
#if SERIAL_COMMANDS
            if (Serial.peek() != -1) {
                processSerialInput(Serial.read());
            }
#endif
        }
    }

    switch (patternNumber) {
    default:
    case 0: if (randomIntervalTimer(1)) { // Fire simulation
                i = random() % ledsPerStrip;
                fireIndex = (firePaletteLen / 2) + (getCylindricalX(i) * firePaletteLen / 2);

                fireOffset = 0;
                for (int j = 0; j < 8; j++) {
                    fireOffset += random() % (firePaletteLen/44);
                }
                fireOffset -= firePaletteLen/11;

                fireIndex += (fireOffset);
                if (fireIndex < 0) {
                    fireIndex = 0;
                }
                if (fireIndex > firePaletteLen-1) {
                    fireIndex = firePaletteLen-1;
                }

                for (int j = 0; j < 4; j++) {
                    rgbwVals[i][j] = fireRgbwPalette[((int)(fireIndex)%firePaletteLen)][j];
                }
            }

            sinOffset = (sin(iteration*0.05)+sin(iteration*0.11)/4) * firePaletteLen/16;

            for (i = 0; i < ledsPerStrip; i++) {
                fireIndex = (firePaletteLen / 2) + (getCylindricalX(i) * firePaletteLen / 2)+sinOffset;

                while (fireIndex < 0) {
                    fireIndex += firePaletteLen;
                }
                while (fireIndex > firePaletteLen-1) {
                    fireIndex -= firePaletteLen;
                }

                fadePixel (rgbwVals[i], fireRgbwPalette[(int)(fireIndex)%firePaletteLen], 6);
                gammaCorrect (rgbwVals[i], outputVal, brightnessVal);
                colourCorrect (outputVal);
                strip.setPixel(i, outputVal, 0);
            }

            strip.show(0);
            break;

    case 1: if (randomIntervalTimer(1000)) { // Rain
                int pixel = random() % ledsPerStrip;

                for (int i = 0; i < 4; i++) {
                    rgbwVals[pixel][i] = unicornBarfRgbwPalette[(int)(iteration*speedFactor*0.05)%unicornBarfPaletteLen][i];
                }
            }

            for (i = 0; i < ledsPerStrip; i++) {
                fadePixel (rgbwVals[i], rainSetPoint, 3);
                gammaCorrect (rgbwVals[i], outputVal, brightnessVal);
                colourCorrect (outputVal);
                strip.setPixel(i, outputVal, 0);
            }

            strip.show(0);
            break;

    case 2: for (i = 0; i < ledsPerStrip; i++) { // Star drive
                uint16_t starDriveVal[4];

                starDrive(starDriveVal, -1*getCylindricalX(i), unicornBarfRgbwPalette, unicornBarfPaletteLen);

                fadePixel (rgbwVals[i], starDriveVal, 3);
                gammaCorrect (rgbwVals[i], outputVal, brightnessVal);
                colourCorrect (outputVal);
                strip.setPixel(i, outputVal, 0);
                strip.setPixel(i, outputVal, 1);
            }

            strip.show(0);
            break;

    case 3: for (i = 0; i < ledsPerStrip; i++) { // Stress test palette
                uint16_t stressTestVal[4];

                getPaletteSample(stressTestRgbwPalette, stressTestPaletteLen, getCylindricalX(i)*2 + (speedFactor * iteration), stressTestVal, true, false);

                fadePixel (rgbwVals[i], stressTestVal, 3);
                gammaCorrect (rgbwVals[i], outputVal, brightnessVal);
                colourCorrect (outputVal);
                strip.setPixel(i, outputVal, iteration%2);
            }

            strip.dither(iteration%2); // allows richer colour represenation
            break;

    case 4: for (i = 0; i < ledsPerStrip; i++) { // Unicorn Barf palette
                uint16_t unicornBarfVal[4];
                getPaletteSample(unicornBarfRgbwPalette, unicornBarfPaletteLen, getCylindricalX(i)*2 + (speedFactor * iteration), unicornBarfVal, true, false);

                fadePixel (rgbwVals[i], unicornBarfVal, 3);

                gammaCorrect (rgbwVals[i], outputVal, brightnessVal);
                colourCorrect (outputVal);
                strip.setPixel(i, outputVal, iteration%2);
            }

            strip.dither(iteration%2);
            break;
    }
}

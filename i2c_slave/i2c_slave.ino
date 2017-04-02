#include <Wire.h>

#define slaveAddress 8
#define speedPot 0
#define brightnessPot 1

uint16_t speedPotVal = 0;
uint16_t brightnessPotVal = 0;

void setup() {
  pinMode(speedPot, INPUT);
  pinMode(brightnessPot, INPUT);

  Wire.begin(slaveAddress);  // I2C slave address 8 setup.
  Wire.onReceive(i2cReceive);  // register our handler function with the Wire library
  Wire.onRequest(i2cTransmit);  // register data return handler
  speedPotVal = analogRead(speedPot);
  brightnessPotVal = analogRead(brightnessPot);
}

int iter = 0;
void loop() {
  speedPotVal = speedPotVal/16 * 15 + analogRead(speedPot)/16;
  delay(1);
  brightnessPotVal = brightnessPotVal/16 * 15 + analogRead(brightnessPot)/16;
  delay(1);
}

byte command = 0;

void i2cReceive(int byteCount) {
  command = Wire.read();
}

void i2cTransmit() {
  if (command == 0)
  {
    uint8_t val[2] = {speedPotVal&0xff, (speedPotVal>>8)&0xff};
    Wire.write(val, 2);
  }
  else if (command == 1)
  {
    uint8_t val[2] = {brightnessPotVal&0xff, (brightnessPotVal>>8)&0xff};
    Wire.write(val, 2);
  }
}

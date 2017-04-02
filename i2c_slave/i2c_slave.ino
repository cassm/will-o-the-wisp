#include <Wire.h>

#define slaveAddress 8
#define speedPot 0

uint16_t speedPotVal = 0;

void setup() {
  pinMode(speedPot, INPUT);

  Wire.begin(slaveAddress);  // I2C slave address 8 setup.
  Wire.onReceive(i2cReceive);  // register our handler function with the Wire library
  Wire.onRequest(i2cTransmit);  // register data return handler
  speedPotVal = analogRead(speedPot);
}

int iter = 0;
void loop() {
  speedPotVal = speedPotVal/16 * 15 + analogRead(speedPot)/16;
  delay(1);
}

void i2cReceive(int byteCount) {
  byte command = Wire.read();
}

void i2cTransmit() {
  uint8_t val[2] = {speedPotVal&0xff, (speedPotVal>>8)&0xff};
  Wire.write(val, 2);
}

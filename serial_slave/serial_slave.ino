
int a2_val, a3_val, a4_val, a5_val, a6_val, a7_val;

void setup() {
  Serial.begin(9600);
  a2_val = analogRead(2);
  a3_val = analogRead(3);
  a4_val = analogRead(4);
  a5_val = analogRead(5);
  a6_val = analogRead(6);
  a7_val = analogRead(7);
}


void loop() {
  if (Serial.available())
  {
      // flush buffer
      while (Serial.available())
      {
          Serial.read();
      }

      // send vals
      Serial.println(a2_val);
      Serial.println(a3_val);
      Serial.println(a4_val);
      Serial.println(a5_val);
      Serial.println(a6_val);
      Serial.println(a7_val);
  }

  a2_val = analogRead(2)/8;
  a3_val = analogRead(3)/8;
  a4_val = analogRead(4)/8;
  a5_val = analogRead(5)/8;
  a6_val = analogRead(6)/8;
  a7_val = analogRead(7)/8;
/*
  a2_val = a2_val/8 * 7 + analogRead(2)/8;
  a3_val = a3_val/8 * 7 + analogRead(3)/8;
  a4_val = a4_val/8 * 7 + analogRead(4)/8;
  a5_val = a5_val/8 * 7 + analogRead(5)/8;
  a6_val = a6_val/8 * 7 + analogRead(6)/8;
  a7_val = a7_val/8 * 7 + analogRead(7)/8;*/
}

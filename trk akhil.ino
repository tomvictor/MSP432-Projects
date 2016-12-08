/*
  Multple serial test
 
  Receives from the main serial port, sends to the others. 
  Receives from serial port 1, sends to the main serial (Serial 0).
 
  The circuit: 
  * Any serial device attached to Serial port 1
  * Serial monitor open on Serial port 0:
 
  created 30 Dec. 2008
  by Tom Igoe
 
  This example code is in the public domain.
 
*/
#include "OneMsTaskTimer.h"
int kt;
void flash2(){
kt++;
}
OneMsTaskTimer_t myTask2 ={1000, flash2, 0, 0};
int kr;
const int blePin = 10;
const int buttonPin = PUSH2;     // the number of the pushbutton pin
const int ledPin =  GREEN_LED; 
const int ledPin1 =  RED_LED; 
int buttonState = 0;         // variable for reading the pushbutton status


void setup() {
  OneMsTaskTimer::add(&myTask2); // 1000ms period
  OneMsTaskTimer::start();
  // initialize both serial ports:
  Serial.begin(115200);
  Serial1.begin(115200);//ble
  Serial2.begin(115200);//gps
  Serial3.begin(115200);//prs
 pinMode(ledPin, OUTPUT);
 pinMode(ledPin1, OUTPUT);
 pinMode(blePin, OUTPUT);      
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT_PULLUP);    
}

void loop() {
  
  // read from port 1, send to port 0:
  if (Serial1.available()>0) 
  {
   int stat = Serial1.read();
    if(stat=='1')
    {
    digitalWrite(RED_LED, LOW);//redled
    digitalWrite(GREEN_LED, HIGH);//greenled
    }
    else if(stat=='0')
    {
    digitalWrite(GREEN_LED, LOW);
    digitalWrite(RED_LED, HIGH);
    }
    Serial.write(stat);
  } 
    if (Serial2.available())
    {
    int inByte = Serial2.read();
    Serial.write(inByte);
  }
  if (Serial3.available())
    {
    int inByte = Serial3.read();
    Serial.write(inByte);
  }
  buttonState = digitalRead(buttonPin);

  // check if the pushbutton is pressed.
  // if it is, the buttonState is HIGH:
  if(kt==10)
  {
  kt=0;
  digitalWrite(blePin, LOW);
  delay(1);
  digitalWrite(blePin, HIGH);
  }
  Serial.println(kt);
  if (buttonState == LOW) {     
    // turn LED on:    
  //  digitalWrite(ledPin, LOW);
    digitalWrite(blePin, LOW);
  
  } 
  else {
    // turn LED off:
   // digitalWrite(ledPin2, HIGH);
       digitalWrite(blePin, HIGH); 
     
  }
}


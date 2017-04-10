// Date and time functions using a DS3231 RTC connected via I2C and Wire lib
#include <Wire.h>
#include "RTClib.h"
#include <Button.h>

RTC_DS3231 rtc;
Button modeButton = Button(2, BUTTON_PULLUP_INTERNAL, HIGH, 50);
Button setButton = Button(3, BUTTON_PULLUP_INTERNAL, HIGH, 50);

bool modeType = 0;
bool setMode = 0;

int buttonHoldMillis = 2000;
unsigned long setCounter;

char daysOfTheWeek[7][12] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

int dataPin = 11;
int latchPin = 8;
int clockPin = 12;

static const char displayArray[10] =  {
    0x7B,   // b01111011
    0x60,   // b01100000
    0x57,   // b01010111
    0x76,   // b01110110
    0x6C,   // b01100110
    0x3E,   // b00111110
    0x3F,   // b00111111
    0x70,   // b01110000
    0x7F,   // b01111111
    0x7E,   // b01111110
};

void setup () {
    //set pins to output so you can control the shift register
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);
  
  Serial.begin(9600);
 
  
  delay(3000); // wait for console opening

  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    while (1);


  }

  if (rtc.lostPower()) {
    Serial.println("RTC lost power, lets set the time!");
    // folLOWing line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    // This line sets the RTC with an explicit date & time, for example to set
    // January 21, 2014 at 3am you would call:
    // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));
  }
}

void blankDisplay() {
      digitalWrite(latchPin, LOW);
      shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
      shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
      shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
      shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
      shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
      shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
      digitalWrite(latchPin, HIGH);
}


void displayDigits(int value, bool decimalPt)
{
  int ptCode = 0;
    if(value / 10) {
          displayDigits(value / 10, 0);
    }

    if (decimalPt == 1) {
      ptCode = 0x80;
    } 
    // take the latchPin LOW so 
    // the LEDs don't change while you're sending in bits:
    digitalWrite(latchPin, LOW);
    // shift out the bits:
    shiftOut(dataPin, clockPin, LSBFIRST, displayArray[value % 10] + ptCode); 
    //take the latch pin high so the LEDs will light up:
    digitalWrite(latchPin, HIGH);
}

void updateTime()
{
    DateTime now = rtc.now();
    int hour = now.hour();
    int minute = now.minute();
    int second = now.second();

    if (hour > 12){
      hour -= 12;
    }
    if (hour < 10){
      digitalWrite(latchPin, LOW);
      // shift out the bits:
      shiftOut(dataPin, clockPin, LSBFIRST, 0x00); 
      //take the latch pin high so the LEDs will light up:
      digitalWrite(latchPin, HIGH);
    } 
    displayDigits(hour, (second % 2 == 1));
    
    if (minute < 10){
      digitalWrite(latchPin, LOW);
      // shift out the bits:
      shiftOut(dataPin, clockPin, LSBFIRST, displayArray[0]); 
      //take the latch pin high so the LEDs will light up:
      digitalWrite(latchPin, HIGH);
    }
    displayDigits(minute, (second % 2 == 1));
    
    if (second < 10){
      digitalWrite(latchPin, LOW);
      // shift out the bits:
      shiftOut(dataPin, clockPin, LSBFIRST, displayArray[0]); 
      //take the latch pin high so the LEDs will light up:
      digitalWrite(latchPin, HIGH);
    }
    displayDigits(second, (second % 2 == 1));
}

void displayDate() {
  DateTime now = rtc.now();
        if ( now.month() < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits( now.month(), 1);

              if ( now.day() < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, displayArray[0]);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits( now.day(), 1);

              if ((now.year() - 2000) < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, displayArray[0]);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits((now.year() - 2000), 0);
              delay(500);
}

void setTime(bool setDate = 0) {
    DateTime prev = rtc.now();
    long previousMillis = 0;
    int placeCursor = 1;
    int interval = 1000;
    bool digitState = 0;
    
    int setMonth = prev.month();
    int setDay = prev.day();
    int setYear = prev.year();
    int setHour = prev.hour();
    int setMinute = prev.minute();
    int setSecond = prev.second();
    bool setMode = 1;

    while( setMode == 1 ) {
        if ( setDate == 0 ) {
          unsigned long currentMillis = millis();
          if(currentMillis - previousMillis > interval) {
            // save the last time you blinked the LED 
            previousMillis = currentMillis;   
            // if the LED is off turn it on and vice-versa:
            if (digitState == 0) {
              
              if (setHour < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits(setHour, placeCursor == 1);

              if (setMinute < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, displayArray[0]);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits(setMinute, placeCursor == 2);
              
              if (setSecond < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, displayArray[0]);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits(setSecond, placeCursor == 3);

              digitState = 1;
              
            } else {
              blankDisplay();

              digitState = 0;
            }
          }
            else if ( setButton.isPressed() ) {
              while ( setButton.isPressed() ) {
                setCounter += 1;
                delay(1);
                digitState = LOW;
                previousMillis = currentMillis + 2000;
                if ( setCounter > 2000 ) {
                  blankDisplay();
                }
              }
                if ( setCounter < 2000 ) {
                  if (placeCursor == 1) { setHour += 1; }
                  if (placeCursor == 2) { setMinute += 1; }
                  if (placeCursor == 3) { setSecond += 1; }
                  if (setHour > 24) { setHour = 0; }
                  if (setMinute > 59) { setMinute = 0; }
                  if (setSecond > 59) { setSecond = 0;}
                  digitState = LOW;
                  previousMillis = currentMillis + 2000;
                } else {
                  setMode = 0;
                }

              setCounter = 0;
            }
            
            else if ( modeButton.uniquePress() ) {
              placeCursor +=1;
              if (placeCursor > 3) { placeCursor = 1; }
              digitState = LOW;
              previousMillis = currentMillis + 2000;
            }
        } else {
          unsigned long currentMillis = millis();
          if(currentMillis - previousMillis > interval) {
            // save the last time you blinked the LED 
            previousMillis = currentMillis;   
            // if the LED is off turn it on and vice-versa:
            if (digitState == 0) {
              if (setMonth < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, 0x00);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits(setMonth, placeCursor == 1);

              if (setDay < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, displayArray[0]);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits(setDay, placeCursor == 2);

              if ((setYear - 2000) < 10) { 
                digitalWrite(latchPin, LOW);
                shiftOut(dataPin, clockPin, LSBFIRST, displayArray[0]);
                digitalWrite(latchPin, HIGH);
              }
              displayDigits((setYear - 2000), placeCursor == 3);

              digitState = 1;
              
            } else {
              blankDisplay();
              digitState = LOW;
            }
          } 

           else if ( setButton.isPressed() ) {
              while ( setButton.isPressed() ) {
                setCounter += 1;
                delay(1);
                digitState = LOW;
                previousMillis = currentMillis + 2000;
                if ( setCounter > 2000 ) {
                  blankDisplay();
                }
              }
                if ( setCounter < 2000 ) {
              if (placeCursor == 1) { setMonth += 1; }
              if (placeCursor == 2) { setDay += 1; }
              if (placeCursor == 3) { setYear += 1; }
              if (setMonth > 12) { setMonth = 1; }
              if (setDay > 31) { setDay = 1; }
              if (setYear > 2099) { setYear = 2000; }
              digitState = LOW;
              previousMillis = currentMillis + 2000;
                  digitState = LOW;
                  previousMillis = currentMillis + 2000;
                } else {
                  setMode = 0;
                }

              setCounter = 0;
            }
            
            else if ( modeButton.uniquePress() ) {
              placeCursor +=1;
              if (placeCursor > 3) { placeCursor = 1; }
              digitState = LOW;
              previousMillis = currentMillis + 2000;
            }
        }
}

if ( prev.year() != setYear || prev.month() != setMonth || prev.day() != setDay ) {
  DateTime now = rtc.now();
  rtc.adjust(DateTime(setYear, setMonth, setDay, now.hour(), now.minute(), now.second()));
}
if ( prev.hour() != setHour || prev.minute() != setMinute || prev.second() != setSecond ) {
  DateTime now = rtc.now();
  rtc.adjust(DateTime(now.year(), now.month(), now.day(), setHour, setMinute, setSecond));
}

}

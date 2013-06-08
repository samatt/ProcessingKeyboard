
//int potPin =A0;
#include "pitches.h"

int speakerPin = 8 ;
int testPin = 9 ;
String inputString = "";
boolean noteRx = false;
int input_note =0;
int toneValue = 0;

void setup(){
pinMode(speakerPin,OUTPUT);
pinMode(testPin,OUTPUT);
Serial.begin(9600);
  inputString.reserve(200);    
}

void loop(){

//  int analogValue = analogRead(potPin);
//  Serial.println(analogValue);
//  
//  int toneValue = map(analogValue, 0,1023, 100, 1000);
//  
//  

    if(noteRx){
      
      noteRx =false;  
    
    
    switch(input_note){
    
      case  'c' :
        toneValue = NOTE_C3;
        Serial.write(NOTE_C3);
      break;
      case  'd' :
        toneValue = NOTE_D3;
      break;
      case  'e' :
        toneValue = NOTE_E3;
      break;
      case  'f' :
        toneValue = NOTE_F3;
      break;
      case  'g' :
        toneValue = NOTE_G3;
      break;
      case  'a' :
        toneValue = NOTE_A3;
      break;
      case  'b' :
        toneValue = NOTE_B3;
      break;
      case  'w' :
        toneValue = NOTE_CS3;
      break;
      case 'x' :
        toneValue = NOTE_DS3;
      break;
      case  't' :
        toneValue = NOTE_FS3;
      break;
      case  'y' :
        toneValue = NOTE_GS3;
      break;
      case  'u' :
        toneValue = NOTE_AS3;
      break;
      default:
        toneValue = 0;
      break;
    
    }
    tone(speakerPin, toneValue, 100);
   } 

}

void serialEvent(){

  while(Serial.available()){
    
    input_note = (char)Serial.read();
   //inputString += inChar;
   
   //if((char)input_note == '\n'){
     noteRx = true;
   // }
  }

}

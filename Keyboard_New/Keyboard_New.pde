int x;
import processing.serial.*;
//Keys Keyboard;
Serial myPort;
void setup(){

  size(700,500);
  
//  background(#CEFF5D);
  // Print a list of the serial ports, for debugging purposes:
  println(Serial.list());

  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
   
}

void draw(){


   for(int i = 0; i<7; i++)
  {
   x = i*100;
   fill(255);
   rect(x, 0, 100, 500);
  }
  
   fill(0);
   rect(75, 0, 50, 250);  
   rect(175, 0, 50, 250);  
   rect(375, 0, 50, 250);  
   rect(475, 0, 50, 250);
   rect(575, 0, 50, 250);
}

void keyPressed(){

println("here");
  switch(key){
  
  case 'a':
     fill(0);
     rect(0, 0, 100, 500);
     myPort.write("c");
    break;    
  case 's':
     fill(0);
     rect(100, 0, 100, 500);
     myPort.write("d");
    break;    
  case 'd':
     fill(0);
     rect(200, 0, 100, 500);
     myPort.write("e");
    break;    
  case 'f':
     fill(0);
     rect(300, 0, 100, 500);
     myPort.write("f");
    break;    
  case 'g':
     fill(0);
     rect(400, 0, 100, 500);
     myPort.write("g");
    break;    
  case 'h':
     fill(0);
     rect(500, 0, 100, 500);
     myPort.write("a");
    break;   
  case 'j':
     fill(0);
     rect(600, 0, 100, 500);
     myPort.write("b");
    break;
  case 'w':
    fill(128);
    rect(75, 0, 50, 250);
  myPort.write("c");    
  break;
  case 'e':
    fill(128);
    rect(175, 0, 50, 250);
    myPort.write("d");    
  break;
  case 't':
    fill(128);
    rect(375, 0, 50, 250);
myPort.write("e");    
  break; 
  case 'y':
    fill(128);
    rect(475, 0, 50, 250);
myPort.write("f");    
  break; 
  case 'u':
    fill(128);
    rect(575, 0, 50, 250);
myPort.write("g");    
  break;  
//  default:
//  println("moo");
//  break;

  }
}


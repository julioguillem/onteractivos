import processing.serial.*;

Serial myPort;  
String data="" ;
PFont  myFont;  
void setup()
{
size(1366,900); 
background(0);
String portName = Serial.list()[2];
myPort = new Serial(this, portName, 9600);
myPort.bufferUntil('\n');
}
void draw()
{
  background(0);
  textAlign(CENTER);
  fill(255);
  text(data,820,400);
  textSize(100);
  fill(#4B5DCE);
  text("              Distancia :        cm",450,400);
   noFill();
   stroke(#4B5DCE);
   delay(100);
}
void serialEvent(Serial myPort)
{
 
  data=myPort.readStringUntil('\n');
}

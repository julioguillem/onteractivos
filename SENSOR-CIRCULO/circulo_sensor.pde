import apsync.*;
import processing.serial.*;
 
PFont f;
AP_Sync streamer;
 
public float distancia;
public int tmp;
 
void setup(){
size(1000,600);
 
streamer = new AP_Sync(this,"/dev/cu.usbmodem141401", 9600);
}
 
void draw() {
 
if (distancia<400){
    background(0);
    // circulo
    stroke(255);
    fill(200,200,0);
    ellipse(500,300,1000-distancia*3,1000-distancia*3);
}
}

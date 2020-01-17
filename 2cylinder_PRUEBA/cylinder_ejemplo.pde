import processing.opengl.*;

float radius = 100;
float ang = 90, ang2 = 90;
int pts = 120;
float depth =200;

void setup(){
 size(600, 600, OPENGL);
 //size(400, 400, P3D);
 background(50);
 fill(150);
 smooth();  
 noStroke();
 frameRate(30);
}

void draw(){
 pushMatrix();
 background(230);
 directionalLight(166, 166, 196, -60, -60, -60);
 ambientLight(200, 105, 130);
 translate(width/2, height/2, -200);
 rotateY(ang2);
 rotateX(ang2*2);
 rotateZ(ang2);
 
 //body
 beginShape(QUAD_STRIP);
 for (int i=0; i<=pts; i++){
   float  px = cos(radians(ang))*radius;
   float  py = sin(radians(ang))*radius;
   vertex(px, py, depth);
   vertex(px, py, -depth);
   ang+=360/pts;
 }
 endShape();
 
 //cara 1
 beginShape(POLYGON);
 for (int i=0; i<=pts; i++){
   float  px = cos(radians(ang))*radius;
   float  py = sin(radians(ang))*radius;
   vertex(px, py, depth);
   ang+=360/pts;
 }
 endShape();

 //cara
 beginShape(POLYGON);
 for (int i=0; i<=pts; i++){
   float  px = cos(radians(ang))*radius;
   float  py = sin(radians(ang))*radius;
   vertex(px, py, -depth);
   ang+=360/pts;
 }
 endShape();
 
 ang2+=PI/120; //for rotation
 popMatrix();
}

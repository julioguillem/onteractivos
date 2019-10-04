void setup() {
  size(500, 500);
 
  
}
void draw() {
  background(209,243,197);
  fill(255);
  rect(140,80,230,300);
  fill(209,243,197);
  arc(190,80,170,100,radians(0),radians(180));
  
  fill(255);
  arc(215,200,37,20,radians(0),radians(180));
  arc(300,200,37,20,radians(0),radians(180));
  
  ellipse(width/2,height/2,25,25);
  
  arc(250,300,100,80,radians(0),radians(180));
  
  arc(237,250,13,13,radians(50),radians(280));
  arc(260,250,13,13,radians(280),radians(480));
  
  fill(209,243,197);
  triangle(140,220,160,280,140,280);
  triangle(370,220,350,280,370,280);
 
  fill(255);
  arc(140,237,36,36,radians(90),radians(270));
  arc(370,237,36,36,radians(270),radians(360+90));
  
  triangle(250,350,230,360,270,360);
}

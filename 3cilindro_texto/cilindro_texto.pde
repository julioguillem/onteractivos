PFont myFont;
PShape can;
PGraphics sphereTexture;

float angle;
PShader colorShader;
color c = color(0,0,0, 0);

void setup() {
  //fullScreen(P3D);
  size(740, 740, P3D);
  String[] fontList = PFont.list();
  myFont = createFont(fontList[885], 32);


  can = createCan(200, 100, 32);
}

void draw() {
float value = alpha(c);
  sphereTexture = createGraphics(280, 30);
  sphereTexture.beginDraw();
  sphereTexture.background(value);
  sphereTexture.textFont(myFont);
  sphereTexture.fill(255);
  sphereTexture.text(day()+month()+" A Julio no le sale", 20, 25);
  sphereTexture.endDraw();
  can.setTexture(sphereTexture);
  background(0);
  
  
  lights();

  translate(width/2, height/2);
  scale(0.7);
  rotateY(angle);
  rotateX(.3);//el grado de girarse
  lights();
  shape(can);

  angle += 0.03;
}

//-------------------------------------------------------------------------

PShape createCan(float r, float h, int detail) {

  textureMode(NORMAL);
  PShape sh = createShape();

  sh.beginShape(QUAD_STRIP);

  sh.noStroke();
  sh.fill(255,255,255,190); 
  for (int i = 0; i <= detail; i++) {
    float angle = radians(360) / detail;
    float x = sin(i * angle);
    float z = cos(i * angle);
    float u = float(i) / detail;
    sh.normal(x, 0, z);
    sh.vertex(x * r, -h/2, z * r, u, 0);
    sh.vertex(x * r, +h/2, z * r, u, 1);
  }
  sh.endShape();
  return sh;
}
//


PGraphics pg;
PFont font;
 
PFont f,myFont;

int cols = 20, rows = cols, w, h, frms = 90;
Square[] squares = new Square[rows*cols];
float theta;
PVector v;
 
public float distancia;
public int tmp;
 
void setup(){
size(1200,1200);
String[] fontList = PFont.list();
font = loadFont("SharpGrotesk-Medium25-48.vlw");
font = loadFont("SharpGrotesk-Light25-50.vlw");
textFont(font);
  

w = 1200/cols;
  h = 1200/rows;
  int i=0;
  for (int x=0; x<rows; x++) {
    for (int y=0; y<cols; y++) {
      squares[i] = new Square(x*w, y*h);
      i++;
    }
  }
}
 
void draw() {
 background(255);
  v = new PVector(mouseX+sin(theta)*200, mouseX+cos(theta)*200);
  for (int i=0; i<cols*rows; i++) {
    squares[i].update();
    squares[i].display();
  }
  theta += TWO_PI/frms;
}

class Square {

  PGraphics square;
  float x, y;

  Square(float _x, float _y) {
    x = _x;
    y = _y;
    square = createGraphics(w, h);
  }

  void update() {
    float distance = dist(v.x, v.y, x+w/2, y+h/2);
    float r = map(distance, 0, sqrt(sq(width/2)+sq(20)), 0, HALF_PI);
    float b = map(0,0,mouseX,mouseX,width);
    square.beginDraw();
    square.rectMode(CENTER);
    square.background(0);
    square.pushMatrix();
    square.translate(w/2, h/2);
    square.rotate(r);
    square.fill(map(mouseX, 0, 255, 230, 0));
    square.rect(0, 0, 200,2+b/20);
    square.popMatrix();
    square.endDraw();
    
    if (mouseX <=1200 && mouseX >=800){
      
      fill(255);
      textAlign(CENTER);
      textSize(35);
      text("!Buenos Días Creador!",width/2,500);
    }
    if (mouseX <=799 && mouseX >=500){
      
      fill(255);
      textAlign(CENTER);
      textSize(40);
      text("Ducha:",width/2,500);
      textSize(20);
      text("10% lavarse - 90% tomar decisiones importantes",width/2, 540);
    }
    if (mouseX <=499 && mouseX >=300){
      
      fill(255);
      textAlign(CENTER);
      textSize(40);
      text("Hoy es:",width/2, 500);
      textSize(20);
      text(day(),width/2,540);
      
    }
    else{
       fill(255);
      textSize(20);
      
      text("",width/3,height/2);
    };
  }

  void display() {
    image(square, x, y);
  }
/*if (distancia<400){
    background(0);
    // circulo
    stroke(255);
    fill(200,200,0);
    ellipse(500,300,1000-distancia*3,1000-distancia*3);
}*/
}

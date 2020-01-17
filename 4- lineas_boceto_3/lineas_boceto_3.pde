int cols = 20, rows = cols, w, h, frms = 80;
Square[] squares = new Square[rows*cols];
float theta;
PVector v;

void setup() {
  size(740, 740);
  w = 740/cols;
  h = 740/rows;
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
    float r = map(distance, 0, sqrt(sq(width/2)+sq(mouseX)), 0, HALF_PI);
    float b = map(0,0, mouseX, mouseX,width);
    square.beginDraw();
    square.rectMode(CENTER);
    square.background(0);
    square.pushMatrix();
    square.translate(w/2, h/2);
    square.rotate(r);
    square.fill(map(mouseX, 0, width/2, 255, 0));
    square.rect(0, 0, 200,2+b/20);
    square.popMatrix();
    square.endDraw();
  }

  void display() {
    image(square, x, y);
  }
}

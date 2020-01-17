void setup() {
  size(500, 500);
  strokeWeight(2);
}
void draw() {
  /*line(20,0,0,20);
   line(40,0,20,20);
   line(60,0,40,20);*/

  for (int x=20; x<width-40; x=x+30){
    for (int y=20; y<height-40; y=y+20){
      line(x+20,y,x,y+20);
      point(30,y);
    }
    /*println(x);
    line(x+20, 0, x, 20);
    point(x-5, 20);*/
}
noLoop();
}

PImage clockBase;
float x1, y1, x2, y2;
  
  void setup(){
  size(1000, 1000, P2D);
  clockBase = loadImage("clockBase.png");
  clockBase.resize(1000,1000);
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  
}
void draw(){
  background(0, 0, 0);
  image(clockBase, x1, y1);
  
  
}

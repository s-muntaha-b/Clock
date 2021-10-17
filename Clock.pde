PImage clockBg, clockBase;
float x1, y1, x2, y2;
  
  void setup(){
  size(1000, 1000, P2D);
  clockBg = loadImage("clockBg.png"); // Free to use image from https://www.pxfuel.com/en/free-photo-xnwsf
  clockBg.resize(1000,1000);
  clockBase = loadImage("clockBase.png");
  clockBase.resize(800,800);
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  
}
void draw(){
  background(clockBg);
  image(clockBase, x1, y1);
  
  
}

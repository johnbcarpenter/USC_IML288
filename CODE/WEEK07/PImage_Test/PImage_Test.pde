PImage appear;

void setup(){
  size(1280,720);
  appear = loadImage("appearance.png");
  imageMode(CENTER);
}

void draw(){
  //background(220);
  pushMatrix();
  translate(mouseX,mouseY);
  rotate(millis()*0.001);
  float sz = 300+200*sin(millis()*0.001);
  image(appear, 0,0, sz,sz);
  popMatrix();
}

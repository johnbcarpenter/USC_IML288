PImage blur;
PImage flake;

void setup(){
  size(720,720);
  blur = loadImage("BLUR.png");
  flake = loadImage("FLAKE.png");
  blendMode(SUBTRACT);
  imageMode(CENTER);
}

void draw(){
  background(155);
  image(flake,width*0.5,height*0.5,width,height);
  tint(255,200);
  image(blur,mouseX,mouseY, 500,500);
}

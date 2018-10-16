void setup(){
  size(720,720);
  colorMode(HSB,255);
  background(0);
  noFill();
}

void draw(){
  blendMode(ADD);
  float theta = millis()*0.001;
  float rad = millis()*0.005;
  float el_rad = millis()*0.0005;
  float x = rad*cos(theta);
  float y = rad*sin(theta);
  float h = (0.1*millis())%255;
  //float h = map(y, -height,height, 0, 255);
  pushMatrix();
  translate(width*0.5, height*0.5);
  stroke(h,255,255,60);
  line(0,0,x,y);
  ellipse(x,y,el_rad,el_rad);
  popMatrix();
}

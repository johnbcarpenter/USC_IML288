void setup(){
  size(720,720, P3D);
  sphereDetail(10);
}

void draw(){
  background(0);
  
  lights();
  fill(0,255,255);
  noStroke();
  
  pushMatrix();
  
  translate(width*0.5, height*0.5);
  rotateY(mouseX/float(width)*TWO_PI);
  rotateX(mouseY/float(height)*TWO_PI);
  sphere(200);
  
  fill(155);
  translate(280*sin(millis()*0.001),280*cos(millis()*0.001));
  sphere(40);
  
  //translate(-400,-400);
  //box(60);
  
  popMatrix();
}

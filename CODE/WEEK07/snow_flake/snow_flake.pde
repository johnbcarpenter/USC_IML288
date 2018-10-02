PShape flake;

void setup() {
  size(720, 720);
  flake = loadShape("flake.svg");
  shapeMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(width/2, height/2);
  for (float theta = 0; theta < TWO_PI; theta += PI/3) {
    pushMatrix();
    rotate(theta);
    shape(flake, 0, -100);
    popMatrix();
  }
  popMatrix();
}

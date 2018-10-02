PShape flake;

void setup() {
  size(720, 720);
  flake = loadShape("flake.svg");
  shapeMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(width/2, height/2);
  for (int i = 0; i < 6; i++) {
    rotate(PI/3);
    shape(flake, 0, -100);
  }
  popMatrix();
}

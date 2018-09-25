float x;
float y;
float easing = 0.1;

void setup() {
  size(1280, 720);
}
void draw() {
  float targetX = mouseX;
  x += (targetX - x) * easing;
  float targetY = mouseY;
  y += (targetY - y) * easing;
  float diameter = dist(pmouseX, pmouseY, mouseX, mouseY);
  if (diameter > 100) {
    diameter = 100;
  }
  if (diameter < 5){
    diameter = 5;
  }
  ellipse(x, y, diameter, diameter);

  //println(targetX + " : " + x);
}

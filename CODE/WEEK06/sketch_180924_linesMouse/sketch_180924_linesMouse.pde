void setup() {
  size(1280, 720);
}
void draw() {
  float r = map(mouseX, 0, width, 0, 255);
  float g = map(mouseY, 0, height, 0, 255);
  stroke(r, g, 255, 100);
  if (mouseX != 0 && mouseY != 0) {
    line(0, 0, mouseX, mouseY); 
    line(width, height, mouseX, mouseY);
  }
}

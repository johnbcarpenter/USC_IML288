void setup() {
  size(720, 720);
}
void draw() {
  float x = width/2;
  float y = height/2;
  float diam = 300;
  fill(255);
  float disty = dist(mouseX, mouseY, x, y);
  if (disty < diam/2) {
    if (mousePressed) {
      fill(255, 0, 0);
    } else {
      fill(0, 0, 255);
    }
  }
  // comment out hit area
  ellipse(x, y, diam, diam);
  
  // this should be a unicorn vvv
  rect(300,300,100,100);
}

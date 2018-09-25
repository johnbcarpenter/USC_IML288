float x = 0;
float y = 0;
float px = 0;
float py = 0;
float easing = 0.1;

void setup() {
  size(1280, 720);
}
void draw() {
  //background(220);
  float targetX = mouseX;
  x += (targetX - x) * easing;
  float targetY = mouseY;
  y += (targetY - y) * easing;
  //float strokewt = dist(pmouseX, pmouseY, mouseX, mouseY); //harsh
  float strokewt = dist(px, py, x, y); //eased
  if (strokewt > 100) {
    strokewt = 100;
  }
  if (strokewt < 5) {
    strokewt = 5;
  }
  //ellipse(x, y, diameter, diameter);
  strokeWeight(strokewt);
  
  if (keyPressed){
    line(px, py, x, y);
  }

  px = x;
  py = y;
  //println(targetX + " : " + x);
}

float x;
float y;

void setup() {
  size(720, 720);
  x = width/2;
  y = height/2;
}
void draw() {
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
  ellipse(x, y, diam, diam);
}
void keyPressed(){
 if (keyCode == UP){
   y -= 10; 
 } else if (keyCode == DOWN){
   y += 10; 
 } else if (keyCode == RIGHT){
   x += 10; 
 } else if (keyCode == LEFT){
   x -= 10; 
 }
}

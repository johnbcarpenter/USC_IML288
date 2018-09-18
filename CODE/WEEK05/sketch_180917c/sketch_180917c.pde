size(720, 720);
rectMode(CENTER);

for (int x = 0; x < width; x +=20) {
  for (int y = 0; y < height; y+= 20) {
    float sz = random(2, 20);

    pushMatrix();
    translate(x, y);
    float angle = random(TWO_PI);
    rotate(angle);
    rect(0, 0, sz, sz);
    popMatrix();
  }
}

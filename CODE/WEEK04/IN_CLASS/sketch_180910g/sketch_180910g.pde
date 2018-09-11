size(1024, 768);

int spacing = 20;
for (int x = 0; x < width; x += spacing) {
  //fill(random(255));
  //fill(random(255),random(255),random(255));
  for (int y = 0; y < height; y += spacing) {
    fill(random(255),random(255),random(255));
    ellipse(x,y, 20,20);
  }
}

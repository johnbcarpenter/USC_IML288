size(1024, 768);

int spacing = 50;

for (int x = 0; x < width; x += spacing) {
  for (int y = 0; y < height; y += spacing) {
    float rad = 50;//random(10, 50);
    strokeWeight(rad*0.1);
    fill(random(255), random(255), random(255));
    ellipse(x, y, rad, rad);
    point(x-rad*0.1, y-rad*0.1);
    point(x+rad*0.1, y-rad*0.1);
    arc(x, y, rad*0.6, rad*0.6, PI*0.25, PI*0.75);
  }
}

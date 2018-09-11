size(1024, 768);

for (int i = 0; i < 400; i++) {
  float x = random(0,width);
  float y = random(0,height);
  float rad = random(50,150);
  strokeWeight(rad*0.1);
  fill(random(255), random(255), random(255));
  ellipse(x, y, rad, rad);
  point(x-rad*0.1, y-rad*0.1);
  point(x+rad*0.1, y-rad*0.1);
  arc(x, y, rad*0.6, rad*0.6, PI*0.25, PI*0.75);
}

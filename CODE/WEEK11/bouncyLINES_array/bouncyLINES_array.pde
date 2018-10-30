BouncyBall[] bballs;

void setup() {
  size(1280, 720, P3D);

  bballs = new BouncyBall[100];
  for (int i = 0; i < bballs.length; i++) {
    bballs[i] = new BouncyBall();
  }
  background(0);
}

void draw() {
  //background(0);

  for (int i = 0; i < bballs.length; i++) {
    bballs[i].update();
    //bballs[i].display();
    
    for (int j = 0; j < bballs.length; j++) {
      PVector b1 = new PVector(bballs[i].x, bballs[i].y);
      PVector b2 = new PVector(bballs[j].x, bballs[j].y);
      float dist = b1.dist(b2);
      float a = 1.0-dist/300.0;
      stroke(bballs[i].c, a*255);
      if (dist < 300){
        line(b1.x, b1.y, b2.x, b2.y);
      }
    }
  }
}

BouncyBall[] bballs; // array name = bballs

void setup() {
  size(1280, 720, P3D);

  bballs = new BouncyBall[100];
  for (int i = 0; i < bballs.length; i++) {
    bballs[i] = new BouncyBall();
  }
}

void draw() {
  background(0);

  for (int i = 0; i < bballs.length; i++) {
    bballs[i].update();
    bballs[i].display();
  }

}

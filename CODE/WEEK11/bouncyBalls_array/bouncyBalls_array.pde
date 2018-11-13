BouncyBall[] bballs; // array name = bballs

//BouncyBall bb1;
//BouncyBall bb2;

void setup() {
  size(1280, 720, P3D);

  bballs = new BouncyBall[100];
  for (int i = 0; i < bballs.length; i++) {
    bballs[i] = new BouncyBall();
  }
  
  //bb1 = new BouncyBall();
  //bb2 = new BouncyBall();
}

void draw() {
  background(0);

  for (int i = 0; i < bballs.length; i++) {
    bballs[i].update();
    bballs[i].display();
  }
  
  //bb1.update();
  //bb1.display();
  
  //bb2.update();
  //bb2.display();
}

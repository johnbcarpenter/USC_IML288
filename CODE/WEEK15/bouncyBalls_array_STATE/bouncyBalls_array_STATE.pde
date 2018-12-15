BouncyBall[] bballs; 

int SYSTEM_STATE = 1;

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

void keyPressed() {
  if (key == '1')
    SYSTEM_STATE = 1;
  else if (key == '2')
    SYSTEM_STATE = 2;
  else if (key == '3')
    SYSTEM_STATE = 3;
    
  println(SYSTEM_STATE);
}

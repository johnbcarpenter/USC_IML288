BouncyBall[] balls; // like int[] xs;

void setup(){
  size(720,720);
  
  balls = new BouncyBall[1000];
  for (int i = 0; i < balls.length; i++){
    balls[i] = new BouncyBall();
  }
  
}

void draw(){
  background(200);
  for (int i = 0; i < balls.length; i++){
    balls[i].update();
    balls[i].drawself();
  }
  
}

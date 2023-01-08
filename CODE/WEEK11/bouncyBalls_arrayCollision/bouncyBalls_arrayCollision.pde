BouncyBall[] bballs; // array name = bballs

PVector player;
float player_sz = 20.0;

void setup() {
  size(1280, 720, P3D);

  bballs = new BouncyBall[20];
  for (int i = 0; i < bballs.length; i++) {
    bballs[i] = new BouncyBall();
  }
  
  player = new PVector(width*0.5, height*0.5);
  rectMode(CENTER);
}

void draw() {
  background(0);
  
  fill(255,0,0);
  rect(player.x, player.y, player_sz,player_sz);
  
  // check for collisions
  for (int i = 0; i < bballs.length; i++) {
    if (bballs[i].loc.dist(player) < player_sz + bballs[i].sz) {
      bballs[i].hit = true;
    }
  }

  for (int i = 0; i < bballs.length; i++) {
    bballs[i].update();
    bballs[i].display();
  }
 
}

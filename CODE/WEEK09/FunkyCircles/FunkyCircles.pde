void setup(){
  size(720,720);
  noLoop(); // run the draw loop 1x
}

void draw(){
  background(0, 0, 0);
  
  // DRAW A GRID OF ELIPSES
  float grid = 50.0; // size of the grid
  for (float x = 0; x < width; x += grid){
    for (float y = 0; y < height; y += grid){
      drawFunkyCircle(x, y, grid);
    }
  }
  
  // DRAW RANDOMLY PLACED FUNKY ELIPSES
  //for (int i = 0; i < 600; i++){
  //  float x = random(width);
  //  float y = random(height);
  //  float rad  = random(20,60);
  //  drawFunkyCircle(x,y,rad);
  //}
  
}

void drawFunkyCircle(float x, float y, float diam){
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(x, y, diam,diam);
  
  float cntr_vary = diam*0.02; 
  fill(random(255),random(255),random(255));
  ellipse(x+random(-cntr_vary,cntr_vary), y+random(-cntr_vary,cntr_vary), diam*0.8,diam*0.8);
  
  fill(random(255),random(255),random(255));
  ellipse(x+random(-cntr_vary,cntr_vary), y+random(-cntr_vary,cntr_vary), diam*0.6,diam*0.6);
  
  fill(random(255),random(255),random(255));
  ellipse(x+random(-cntr_vary,cntr_vary), y+random(-cntr_vary,cntr_vary), diam*0.4,diam*0.4);
}

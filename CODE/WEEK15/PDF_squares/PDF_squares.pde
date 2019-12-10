import processing.pdf.*;

//size(1024,1024, PDF, "squares.pdf");
size(1024,1024);
rectMode(CENTER);

noStroke();
for (int i = 0; i < 200; i++){
  float x = random(width);
  float y = random(height);
  float sz = random(50,200);
  float rotation = random(0,TWO_PI);
  fill(random(255), 100);
  pushMatrix();
  translate(x,y);
  rotate(rotation);
  scale(random(0.5,1.0));
  rect(0,0,sz,sz);
  ellipse(40,40,sz*0.5,sz*0.5);
  popMatrix();
  
  //exit(); // when printing to PDF
}

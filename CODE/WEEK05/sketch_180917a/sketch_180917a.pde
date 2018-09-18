size(720,720);

int x = 530;
int y = 150;
int sz = 200;

rectMode(CENTER);
pushMatrix();
translate(x,y);
rotate(PI/4.0);
rect(0,0,sz,sz);
popMatrix();

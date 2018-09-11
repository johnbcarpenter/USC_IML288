size(2014,768);

int x = 130;
int y = 130;
int rad = 100;

strokeWeight(8);
fill(random(255),random(255),random(255));
ellipse(x,y, rad,rad);
point(x-10,y-10);
point(x+10,y-10);
arc(x,y, rad*0.6,rad*0.6, PI*0.25,PI*0.75);

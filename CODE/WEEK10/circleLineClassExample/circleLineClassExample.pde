CircleThing ct1;
CircleThing ct2;
CircleThing ct3;
CircleThing ct4;

void setup(){
  size(720,720);
  //                    x,  y,  radius
  ct1 = new CircleThing(200,200,150);
  
  ct2 = new CircleThing(500,500,350);
  ct3 = new CircleThing(400,100,100);
  ct4 = new CircleThing(100,600,15);
}

void draw(){
  background(0);
  ct1.updateAndDrawSelf();
  ct2.updateAndDrawSelf();
  ct3.updateAndDrawSelf();
  ct4.updateAndDrawSelf();
}

void mousePressed(){
  ct1.radius += 30.0;
  ct2.radius += 100.0;
}
void mouseReleased(){
  ct1.radius -= 30.0; 
  ct2.radius -= 100.0;
}

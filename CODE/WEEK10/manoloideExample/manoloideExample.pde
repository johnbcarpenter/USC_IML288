ManoThing mt1; // ManoThing = class, mt1 = object/instance
ManoThing mt2;
ManoThing mt3;
ManoThing mt4;

void setup(){
  size(720,720);
  
  mt1 = new ManoThing();
  mt2 = new ManoThing();
  mt3 = new ManoThing();
  mt4 = new ManoThing();
}

void draw(){
  background(255);
  mt1.update();
  mt1.display();
  mt2.update();
  mt2.display();
  mt3.update();
  mt3.display();
  mt4.update();
  mt4.display();
}

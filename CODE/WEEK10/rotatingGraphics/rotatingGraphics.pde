Thing mt1; // Thing = class, mt1 = object/instance
Thing mt2;
Thing mt3;
Thing mt4;

void setup(){
  size(720,720);
  
  mt1 = new Thing();
  mt2 = new Thing();
  mt3 = new Thing();
  mt4 = new Thing();
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

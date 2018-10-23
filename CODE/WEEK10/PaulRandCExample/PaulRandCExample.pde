RandC rc1;
RandC rc2;
RandC rc3;
RandC rc4;

void setup(){
  size(720,720);
  
  rc1 = new RandC(); // runs the constructor
  rc2 = new RandC();
  rc3 = new RandC();
  rc4 = new RandC();
}

void draw(){
  background(255);
  rc1.update(); // calls the class method
  rc1.display(); // calls the class method
  rc2.update();
  rc2.display();
  rc3.update();
  rc3.display();
  rc4.update();
  rc4.display();
}

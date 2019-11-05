DancingC c1; // c1 is the instance of the DancingC class
DancingC c2;
DancingC c3;
DancingC c4;
DancingC c5;

void setup(){
  size(720,720);
  
  c1 = new DancingC(200,200); // new instantiates an instance of Dancing
  // basically this calls the constructor
  
                   // x, y
  c2 = new DancingC(400,400);
  c3 = new DancingC(200,100);
  c4 = new DancingC(300,500);
  c5 = new DancingC(500,100);
}

void draw(){
  background(200);
  c1.update();
  c2.update();
  c3.update();
  c4.update();
  c5.update();
  c1.drawSelf(); // dot allows access to class methods
  c2.drawSelf();
  c3.drawSelf();
  c4.drawSelf();
  c5.drawSelf();
}

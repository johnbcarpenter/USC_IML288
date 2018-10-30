ManoloideThing[] mt = new ManoloideThing[30];

void setup() {
  size(720, 720);

  for (int i = 0; i < mt.length; i++) {
    mt[i] = new ManoloideThing();
  }
}

void draw() {
  background(255);

  for (int i = 0; i < mt.length; i++) {
    mt[i].display();
  }
}

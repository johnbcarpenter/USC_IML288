int dice1 = 0;
int dice2 = 0;

void setup(){
  size(720,720);
  textSize(120);
}

void draw(){
  background(0);
  text(dice1, 200,360);
  text(dice2, 400,360);
  //println(genRandomNumber());
}

int genRandomNumber(int sides){
  int dice_value = 1+int(random(sides));
  return dice_value;
}

void mousePressed(){
  dice1 = genRandomNumber(36);
  dice2 = genRandomNumber(36);
}

//void printRandomNumber(){
//  println(1+int(random(6)));
//}

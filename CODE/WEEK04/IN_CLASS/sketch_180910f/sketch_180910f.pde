size(1024,768);

int spacing = 10;
for (int i = 0; i < 5006; i++){
  println(i);
  //line(0 + i*spacing,height, 600 + i*spacing,0);
  stroke(0, random(10,55));
  line(random(0,width),random(0,height),random(0,width),random(0,height));
}

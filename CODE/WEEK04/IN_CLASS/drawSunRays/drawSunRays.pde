
size(720,720);

float rad = 200.0;
for (float t = 0; t < TWO_PI; t += PI/40.0){
  float x = rad*cos(t);
  float y = rad*sin(t);
  
  line(width*0.5, height*0.5, width*0.5+x, height*0.5+y);
}


size(720,720);

float rad = 200.0;
beginShape();
for (float t = 0+PI/6.0; t < TWO_PI+PI/6.0; t += TWO_PI/6.0){
  vertex(width*0.5 + rad*cos(t), height*0.5 + rad*sin(t)); 
}
endShape();

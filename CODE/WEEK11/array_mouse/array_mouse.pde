int len = 160;
int[] x = new int[len];
int[] y = new int[len];

void setup(){
  size(1280,720);
}

void draw(){
  background(0);
  // update array positions
  for (int i = x.length-1; i > 0; i--){
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  x[0] = mouseX;
  y[0] = mouseY;
  // draw the array positions
  noStroke();
  for (int i = 1; i < x.length; i++){
    float fctr = i/float(x.length); // this always gives a value 0-1
    fill(255-255.0*fctr);
    //float sz = 100.0*fctr;
    //ellipse(x[i],y[i], sz,sz);
    stroke(255-255.0*fctr);
    //line(width*0.5,height*0.5, x[i],y[i]);
    //draw a line for the fish ribs
    float y_val = sin(4.0*TWO_PI*fctr)*100;
    line(x[i],y[i]-y_val, x[i],y[i]);
    line(x[i],y[i]+y_val, x[i],y[i]);
    
    ellipse(x[i], y[i]-y_val, 10,10);
    ellipse(x[i], y[i]+y_val, 10,10);
    
    //draw a line to the previous position
    line(x[i-1],y[i-1], x[i],y[i]);
  }
}

int len = 100;
int[] x = new int[len];
int[] y = new int[len];

void setup() {
  size(1280, 720);
}

void draw() {
  background(0);
  // update array positions
  for (int i = x.length-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  x[0] = mouseX;
  y[0] = mouseY;

  // draw the array positions
  for (int i = 0; i < x.length-1; i++) { // 0 --> 98
    stroke(255);
    line(x[i], y[i], x[i+1], y[i+1]);
  }

  for (int i = 0; i < x.length; i++) {
    noStroke();
    //fill(255);
    fill(255 - 255*i/float(x.length));
    float rad = 20 - 20*i/float(x.length);
    ellipse(x[i], y[i], rad, rad);
    text(i, x[i]+rad, y[i]);
  }
}

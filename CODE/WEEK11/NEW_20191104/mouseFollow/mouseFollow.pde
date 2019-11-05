int[] xs; // array of x values
int[] ys; // array of y values

void setup() {
  size(720, 720);
  xs = new int[60];
  ys = new int[60];

  //for (int i = 0; i < xs.length; i++){
  //  xs[i] = int(random(width));
  //  ys[i] = int(random(height));
  //}
}

void draw() {
  background(200);

  for (int i = xs.length - 1; i > 0; i--) {
    xs[i] = xs[i-1];
    ys[i] = ys[i-1];
  }
  xs[0] = mouseX;
  ys[0] = mouseY;

  for (int i = 0; i < xs.length; i++) {
    noStroke();
    //map value btw  0-->array length  to full alpha-->transparent
    float a = map(i, 0, xs.length, 255, 0);
    float diam = map(i, 0, xs.length, 60, 2);
    fill(0, a);
    //ellipse(xs[i], ys[i], diam, diam);
    stroke(0, a);
    line(width*0.5, height*0.5, xs[i], ys[i]);

    if (i < xs.length-1) { // connect all the points w a line
      stroke(0, a);
      line(xs[i], ys[i], xs[i+1], ys[i+1]);
    }
  }
}

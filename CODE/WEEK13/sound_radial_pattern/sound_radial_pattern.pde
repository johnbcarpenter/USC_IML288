import processing.sound.*;

FFT fft;
AudioIn in;
int bands = 512;
float[] spectrum = new float[bands];

void setup() {
  size(512, 360);
  background(255);

  // Create an Input stream which is routed into the Amplitude analyzer
  fft = new FFT(this, bands);
  in = new AudioIn(this, 0);

  // start the Audio Input
  in.start();

  // patch the AudioIn
  fft.input(in);
}      

void draw() { 
  background(255);
  fft.analyze(spectrum);

  // translate to the middle of the screen
  pushMatrix();
  translate(width*0.5, height*0.5);

  // draw a red ellipse based on the sum of all band frequencies
  float sum = 0; // stores the sum
  for (int i = 0; i < bands; i++) {
    sum += spectrum[i]; // add the current freq to the sum
  }
  float diameter = sum*1000.0; // amplify the sum a bunch so we can see it
  if (diameter < 6.0) diameter = 6.0; // minimum diameter
  fill(255, 0, 0);
  noStroke();
  ellipse (0, 0, diameter, diameter); // draw the ellipse


  // draw the spirals
  stroke(0);
  for (int i = 0; i < bands; i++) {

    // wrap the fft spectrum around in a spiral
    pushMatrix();
    rotate(16.0*TWO_PI*i/float(bands)); // rotate i/bands of the way around TWO_PI
    // *16.0 wraps around the circle a lot more
    strokeWeight(1);
    line(0, 0, spectrum[i]*height*10, 0);
    strokeWeight(10);
    point(spectrum[i]*height*10, 0);
    popMatrix();

    //line( i, height*0.5, i, height*0.5 - spectrum[i]*height*5 );
    //line( i, height*0.5, i, height*0.5 + spectrum[i]*height*5 );
  }
  popMatrix();

  // draw a typical sound spectrum "bar" chart
  float center_y = height*0.8;
  float amplify_line = height*40.0;
  strokeWeight(1);
  for (int i = 0; i < bands; i++) {
    line( i, center_y, i, center_y - spectrum[i]*amplify_line );
    line( i, center_y, i, center_y + spectrum[i]*amplify_line );
  }
}

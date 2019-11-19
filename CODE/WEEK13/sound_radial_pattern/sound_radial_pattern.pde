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
  for (int i = 0; i < bands; i++) {
    // The result of the FFT is normalized
    // draw the line for frequency band i scaling it up by 5 to get more amplitude.
    
    // wrap the fft spectrum around 32 PI
    pushMatrix();
    rotate(16.0*TWO_PI*i/float(bands));
    strokeWeight(1);
    line(0,0,spectrum[i]*height*5,0);
    
    strokeWeight(10);
    point(spectrum[i]*height*5,0);
    popMatrix();
    
    //line( i, height*0.5, i, height*0.5 - spectrum[i]*height*5 );
    //line( i, height*0.5, i, height*0.5 + spectrum[i]*height*5 );
    
    
  }
  popMatrix();
}

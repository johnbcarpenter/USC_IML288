size(1280,720);

int x = 130; // x position
int y = 130; // y position
int rad = 100; // face radius

// DRAW THE HEAD
float r = random(255); // red value
float g = random(200,255); // green value
float b = random(0,120); // blue value
fill(r,g,b);
noStroke();
ellipse(x,y, rad,rad);

// DRAW THE EYES
float eye_dist = rad*0.1; // eye_dist based on face size
float eye_size = rad*0.2; // eye_size based on face size
stroke(0);
strokeWeight(rad*0.01); // stroke weight based on face size
fill(255);
ellipse(x-eye_dist,y-eye_dist, eye_size,eye_size); // *same position 
ellipse(x+eye_dist,y-eye_dist, eye_size,eye_size); // **same position 

strokeWeight(rad*0.05); // stroke weight based on face size
point(x-eye_dist,y-eye_dist); // *same position 
point(x+eye_dist,y-eye_dist); // **same position

// DRAW THE MOUTH
noFill();
strokeWeight(rad*0.03);
arc(x,y, rad*0.6,rad*0.6, PI*0.25,PI*0.75);

float div = 9;
int step = 100;

void setup() {
  colorMode(HSB, 1);
  // blendMode(MULTIPLY);
  // ellipseMode(CORNER);

  size(400, 600);

  noFill();
  strokeWeight(1);

  noLoop();
}

void draw() {
  background(1);
  
  float c = 1 / div; 

  for (int i = 0; i < div + 1; i++) {
    for (int y = step / 2; y < height; y += step) {      
      for (int x = step / 2; x < width; x += step) {        
        stroke(c * i, 1, 1);
        ellipse(x, y, step / div * i, step / div * i);
      }
    }
  }
}

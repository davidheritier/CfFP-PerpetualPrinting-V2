float div = 13;
int step = 100;
float c = 1 / div;
float rot = 360 / div;

void setup() {
  colorMode(HSB, 1);
  // blendMode(MULTIPLY);
  rectMode(CENTER);

  size(600, 900);

  noFill();
  strokeWeight(1);

  noLoop();
}

void draw() {
  background(1);


  for (int i = 0; i < div; i++) { 
    float size = step / div * i;

    for (int y = step / 2; y < height; y += step) {
      for (int x = step / 2; x < width; x += step) {
        pushMatrix();
        translate(x, y);
        stroke(c * i, 1, 1);
        rotate(radians(rot * i));
        rect(0, 0, size, size);
        popMatrix();
      }
    }
  }
}

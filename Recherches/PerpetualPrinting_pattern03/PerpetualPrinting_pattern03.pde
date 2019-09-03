int i = 0;
float val = 0;

void setup() {
  size(400, 800);

  colorMode(RGB, 1);
  blendMode(MULTIPLY);
  rectMode(CENTER);

  background(1);
  noStroke();
  // stroke(0);
  fill(0.75);
  // noFill();

  // frameRate(1);
}

void draw() {
  int step = width / 20;

  if (i < 5) {
    for (int y = step / 2; y < height; y += step) {
      for (int x = step / 2; x < width; x += step) {
        int val = floor(random(5));
        int size = val * step;

        if (round(random(10)) % 5 == 0) {
          rect(x * val, y, size, size);
        }
      }
    }      
    i++;
  }
}

int i = 0;

void setup() {
  size(400, 1000);

  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  background(1);
  noStroke();
  fill(.9);

  // frameRate(1);
}

void draw() {
  int step = width / 8;

  if (i < 5) {
    for (int y = step / 2; y < height; y += step) {
      for (int x = step / 2; x < width; x += step) {
        int val = ceil(random(2));
        int size = val * step;

        if (round(random(5)) % 3 == 0) {
          ellipse(x, y, size, size);
        }
      }
    }
    i++;
  }
}

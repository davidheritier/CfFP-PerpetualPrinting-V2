int i = 0;

void setup() {
  size(400, 1000);
  
  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  background(1);
  noStroke();

  // frameRate(1);
}

void draw() {
  int step = width / 8;

  if (i < 10) {
    if (i % 3 == 0) {
      // YELLOW
      fill(1, 1, 0);
    } else if (i % 2 == 0) {
      // MAGENTA
      fill(1, 0, 1);
    } else {
      // CYAN
      fill(0, 1, 1);
    }

    for (int y = step / 2; y < height; y += step) {
      for (int x = step / 2; x < width; x += step) {
        int size = round(random(step));

        if (round(random(3)) % 3 == 0) {
          ellipse(x, y, size, size);
        }
      }
    }
    i++;
  }
}

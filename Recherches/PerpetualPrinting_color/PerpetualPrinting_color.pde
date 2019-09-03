void setup() {
  size(1000, 1000);

  colorMode(HSB, 100);
  background(0, 0, 100);
  noStroke();

  noLoop();
}

void draw() {
  int step = width / 100;
  int size = step;

  for (int y = 0; y < height; y += step) {
    int h = y; 

    for (int x = 0; x < width; x += step) {
      int s = x;

      fill(h, 100, 100);
      rect(x, y, size, size);
    }
  }
}

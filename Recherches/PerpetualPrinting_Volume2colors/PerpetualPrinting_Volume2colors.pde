int col = 16;
int randomPicker, randomColor;

void setup() {
  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  size(600, 900, P3D);

  background(1);
  stroke(0);
  noFill();

  // frameRate(3);
}

void draw() {
  background(1);
  int step = width / col;

  for (int y = step / 2; y < height; y += step) {
    for (int x = step / 2; x < width; x += step) {
      pushMatrix();
      translate(x, y);
      rotateY(radians(frameCount));
      rotateZ(radians(frameCount));
      box(step);
      popMatrix();
    }
  }
}

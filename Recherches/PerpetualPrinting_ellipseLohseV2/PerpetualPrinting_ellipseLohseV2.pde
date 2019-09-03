import processing.pdf.*;

float div = 8;
float val = 1 / (div + 1);
int mult;

void setup() {
  size(400, 400, PDF, "ellipses.pdf");
  ellipseMode(CORNER);

  colorMode(HSB, 1);
  blendMode(MULTIPLY);

  background(1);
  fill(0, 0, .9);
  noStroke();

  // frameRate(1);
  noLoop();
}

void draw() {
  float step = width / div;

  for (int y = 0; y < width / step; y++) {
    for (int x = 0; x < width / step; x++) {
      mult = 4; // round(random(4));

      // À FAIRE
      // forcer les cercles taille * 2 et * 4 à être sur les colonnes impaires

      if (mult == 3) {
        mult = 1;
      }

      // fill(x * val, y * val, 1);
      float size = step * mult;

      if (round(random(5)) % 5 == 0) {
        ellipse(x * step, y * step, size, size);
      }

      x += mult - 1;
    }
    if (mult > 1) {
      y += mult - 1;
    }
  }
  exit();
}

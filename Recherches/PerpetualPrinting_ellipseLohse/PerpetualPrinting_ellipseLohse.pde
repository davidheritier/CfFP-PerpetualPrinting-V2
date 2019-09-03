import processing.pdf.*;

float div = 8;
float val = 1 / (div + 1);
int i = 0;

void setup() {
  size(400, 400, PDF, "ellipses.pdf");
  ellipseMode(CORNER);

  colorMode(HSB, 1);

  background(0, 0, 1);
  noStroke();

  // frameRate(1);
}

void draw() {
  float step = width / div;

  for (int y = 0; y < width / step; y++) {
    for (int x = 0; x < width / step; x++) {
      int mult = 1 + round(random(3));
      float size = step * mult;

      fill(x * val, y * val, 1);

      ellipse(x * size, y * size, size, size);
    }
  }

  PGraphicsPDF pdf = (PGraphicsPDF) g;

  if (frameCount == 10) {
    exit();
  } else {
    pdf.nextPage();
  }
}

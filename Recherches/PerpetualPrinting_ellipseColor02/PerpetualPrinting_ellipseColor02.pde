import processing.pdf.*;

float colorBrightness = 1;
float colorComplementarity = 0;

int i = 0;
float val = 0;

void setup() {
  size(400, 400, PDF, "ellipsesColor.pdf");

  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  background(1);
  noStroke();

  // frameRate(1);
}

void draw() {
  int step = width / 16;

  int cursor = ceil(random(3));

  for (int y = step / 2; y < height; y += step) {
    for (int x = step / 2; x < width; x += step) {
      if (cursor == 3) {
        // YELLOW
        fill(colorBrightness, colorBrightness, colorComplementarity);
      } else if (cursor == 2) {
        // MAGENTA
        fill(colorBrightness, colorComplementarity, colorBrightness);
      } else {
        // CYAN
        fill(colorComplementarity, colorBrightness, colorBrightness);
      }

      int val = round(random(1, 4));
      int size = val * step;

      if (round(random(5)) % 5 == 0) {
        ellipse(x * val, y * val, size, size);
      }
    }
  }

  PGraphicsPDF pdf = (PGraphicsPDF) g;

  if (frameCount == 10) {
    exit();
  } else {
    pdf.nextPage();
  }
}

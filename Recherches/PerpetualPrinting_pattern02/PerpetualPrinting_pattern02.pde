import processing.pdf.*;

int i = 0;
float val = 0;

void setup() {
  size(400, 400, PDF, "pattern02.pdf");

  colorMode(RGB, 1);

  background(1);
  noStroke();
  fill(0.9);

  // frameRate(1);
}

void draw() {
  int step = width / 16;

  for (int y = step / 2; y < height; y += step) {
    for (int x = step / 2; x < width; x += step) {
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

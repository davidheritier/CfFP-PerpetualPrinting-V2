import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 48;

// VALUES FOR HUE AND SATURATION
// BASE
int val = 30;
// +-
int inc = 20;
// FINAL VALUES
int min = val - inc;
int max = val + inc;

int i = 0, j = 0;
float step, hueRange, satRange, hue, sat, bri;

void setup() {
  colorMode(HSB, 1, 1, 1);
  // blendMode(MULTIPLY);

  size(800, 800, PDF, "Squares.pdf");

  background(0, 0, 1);
  noStroke();

  frameRate(3);
  // noLoop();
}

void draw() {
  bri = 1;

  step = width / col;
  hueRange = round(random(min, max));
  satRange = round(random(min, max));

  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      if (i > hueRange) {
        i = 0;
      }
      
      hue = i / hueRange;
      sat = i / satRange;
      fill(hue, sat, bri);

      rect(x * step, y * step, step, step);
      i++;
    }
  }


  // Get the renderer
  PGraphicsPDF pdf = (PGraphicsPDF) g;

  // When finished drawing, quit and save the file
  if (frameCount == 20) {
    exit();
  } else {
    pdf.nextPage();  // Tell it to go to the next page
  }
}

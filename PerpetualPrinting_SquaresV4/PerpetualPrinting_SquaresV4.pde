import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 24;

// VALUES FOR HUE AND SATURATION
// BASE
int val = col / 3;
// +-
int inc = 0;
// FINAL VALUES
int min = val - inc;
int max = val + inc;

int i = 0, j = 0;
float step, hueRange, satRange, hue, sat, bri;

void setup() {
  colorMode(HSB, 1, 1, 1);
  // blendMode(MULTIPLY);

  noiseSeed(0);
  noiseDetail(4, .9);

  size(816, 816); //, PDF, "Squares.pdf");

  background(0, 0, 1);
  noStroke();

  frameRate(1);
  // noLoop();
}

void draw() {
  // background(1);
  bri = 1;

  step = width / col;
  hueRange = round(random(min, max));
  satRange = hueRange;

  for (int y = 0; y < height / col; y++) {
    hue = i / hueRange;

    for (int x = 0; x < width / col; x++) {
      if (i > hueRange) {
        i = 0;
      }

      sat = i / satRange;
      fill(hue, sat, bri);

      rect(x * step, y * step, step, step);
      i++;
    }
  }


  //// Get the renderer
  //PGraphicsPDF pdf = (PGraphicsPDF) g;

  //// When finished drawing, quit and save the file
  //if (frameCount == 20) {
  //  exit();
  //} else {
  //  pdf.nextPage();  // Tell it to go to the next page
  //}
}

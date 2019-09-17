import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 32;

// VALUES FOR HUE AND SATURATION
// BASE
int val = 24;
// +-
int inc = 6;
// FINAL VALUES
int min = val - inc;
int max = val + inc;

int h = 0, s = 0, b = 0;
float step, hueRange, satRange, briRange, hue, sat, bri;

void setup() {
  colorMode(HSB, 1, 1, 1);
  blendMode(MULTIPLY);

  size(800, 800); //, PDF, "Squares.pdf");
  step = width / col;

  background(0, 0, 1);
  noStroke();

  frameRate(1);
  // noLoop();
}

void draw() {
  // SET COLOR RANGE FOR EACH PAGE
  hueRange = round(random(min, max));
  satRange = round(random(min, max));
  briRange = round(random(min, max));

  // SIMULATE RANDOM VERTICAL POSITION
  translate(0, random(step * 2));

  // SQUARE GRID WITH COLOR VARIATION
  for (int y = 0; y < col; y++) {
    for (int x = 0; x < col; x++) {
      // 
      if (h > hueRange) {
        h = 0;
      }

      if (s > satRange) {
        s = 0;
      }

      if (b > briRange) {
        b = 0;
      }

      hue = h / hueRange;
      sat = 1;
      bri = 1;
      fill(hue, sat, bri);

      rect(x * step, y * step * 2, step, step);
      h++;
      s++;
      b++;
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

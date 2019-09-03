import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 24;

int i = 0;
int hue;
float rectSize, lum;

void setup() {
  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  noiseSeed(0);
  noiseDetail(4, .9);

  size(816, 816); // , PDF, "Squares.pdf");

  background(1);
  noStroke();

  frameRate(1);
  // noLoop();
}

void draw() {
  // background(1);

  rectSize = width / col;

  for (int y = 0; y < height; y++) {
    if (i > 2) {
      i = 0;
    }

    for (int x = 0; x < width; x++) {
      lum = noise(x + y * frameCount * .1);

      // RECT COLOR
      color c = color(lum, 1, 1);
      color m = color(1, lum, 1);
      color j = color(1, 1, lum);

      if (i == 0) {
        hue = c;
      } else if (i == 1) {
        hue = m;
      } else {
        hue = j;
      }

      fill(hue);

      rect(x * rectSize, y * rectSize, rectSize, rectSize);
    }
  }

  i++;

  //// Get the renderer
  //PGraphicsPDF pdf = (PGraphicsPDF) g;

  //// When finished drawing, quit and save the file
  //if (frameCount == 50) {
  //  exit();
  //} else {
  //  pdf.nextPage();  // Tell it to go to the next page
  //}
}

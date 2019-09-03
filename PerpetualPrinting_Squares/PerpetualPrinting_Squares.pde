// import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 17;

// COLOR LUMINOSITY 0-1
float lum = .5;

int randomPicker, randomColor;
float randomStart, rectSize, start;

void setup() {
  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  size(816, 816); // , PDF, "Squares.pdf");

  background(1);
  noStroke();

  frameRate(1);
  // noLoop();
}

void draw() {
  rectSize = width / col;

  // RECT COLOR
  color c = color(lum, 1, 1);
  color m = color(1, lum, 1);
  color j = color(1, 1, lum);

  randomPicker = round(random(2));

  if (randomPicker == 2) {
    randomColor = c;
  } else if (randomPicker == 1) {
    randomColor = m;
  } else {
    randomColor = j;
  }

  fill(randomColor);

  for (int y = 0; y < height; y += rectSize) {
    // RANDOM COLUMN
    randomStart = round(random(col - 1));
    start = rectSize * randomStart;

    rect(start, y, rectSize, rectSize);
  }

  //// Get the renderer
  //PGraphicsPDF pdf = (PGraphicsPDF) g;

  //// When finished drawing, quit and save the file
  //if (frameCount == 50) {
  //  exit();
  //} else {
  //  pdf.nextPage();  // Tell it to go to the next page
  //}
}

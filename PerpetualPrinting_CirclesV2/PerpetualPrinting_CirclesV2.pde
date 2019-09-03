// import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 17;

// COLOR LUMINOSITY 0-1
float lum = .5;

int randomPicker, randomColor, randomWidth, randomSize, step;
float randomStart, ellipseSize, start;

void setup() {
  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  size(816, 816); // , PDF, "Circles.pdf");

  background(1);
  noStroke();

  // frameRate(1);
  // noLoop();
}

void draw() {
  // if (frameCount < 50) {
  step = width / col;

  // ELLIPSE COLOR
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

  // ELLIPSE SIZE
  ellipseSize = width / col;

  translate(step * .5, step * .5);

  for (int y = 0; y < height; y += step) {
    // RANDOM COLUMN
    randomStart = round(random(col - 1));
    start = randomStart * step;

    ellipse(start, y, ellipseSize, ellipseSize);
  }

  //// Get the renderer
  //PGraphicsPDF pdf = (PGraphicsPDF) g;

  //// When finished drawing, quit and save the file
  //if (frameCount == 50) {
  //  exit();
  //} else {
  //  pdf.nextPage();  // Tell it to go to the next page
  //}
  // }
}

// import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 17;

// COLOR LUMINOSITY 0-1
float lum = 0;

int randomPicker, randomColor, randomWidth, step;
float randomStart, rectWidth, start;

void setup() {
  rectMode(CENTER);
  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  size(816, 816); // , PDF, "Rectangles.pdf");

  background(1);
  noStroke();

  // frameRate(1);
  // noLoop();
}

void draw() {
  if (frameCount < 50) {
    step = width / col;

    // RECT COLOR
    color c = color(lum, 1, 1);
    color m = color(1, lum, 1);
    color j = color(1, 1, lum);

    translate(step * .5, step * .5);

    for (int y = 0; y < height; y += step) {
      for (int x = 0; x < width; x += step) {
        // RANDOM COLOR
        randomPicker = round(random(9));

        if (randomPicker == 7) {
          randomColor = j;
        } else if (randomPicker == 5) {
          randomColor = c;
        } else if (randomPicker == 3) {
          randomColor = m;
        } else {
          randomColor = 1;
        }

        fill(randomColor);

        // RECT WIDTH
        rectWidth = random(1) * step;

        rect(x, y, rectWidth, step);
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
}

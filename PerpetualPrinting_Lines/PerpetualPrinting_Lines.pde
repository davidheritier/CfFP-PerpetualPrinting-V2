// import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 17;

// LINE INTERVAL
int step = 3;

int randomPicker, randomColor;
float randomWidth, randomStart, lineWidth, start, end;

void setup() {
  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  size(816, 816); // , PDF, "Lines.pdf");

  noFill();
  strokeWeight(.1);
  stroke(0);

  // frameRate(1);
  // noLoop();
}

void draw() {
  if (frameCount < 50) {
    // LINE WIDTH (1/8, 1/4, 1/2, 1/1)
    randomWidth = round(random(col));

    // LINE = 1/1 WIDTH
    if (randomWidth % col == 0) {
      lineWidth = width;
    }
    // LINE = 1/2 WIDTH
    else if (randomWidth % (col * .5) == 0) {
      // LINE START = COLUMN 1-2
      randomStart = round(random(1));
      lineWidth = width * .5;
    }
    // LINE = 1/4 WIDTH
    else if (randomWidth % (col * .25) == 0) {
      // LINE START = COLUMN 1-4
      randomStart = round(random(3));
      lineWidth = width * .25;
    }
    // LINE WIDTH = 1/8 WIDTH
    else if (randomWidth % (col * .125) == 0) {
      // LINE START = COLUMN 1-8
      randomStart = round(random(7));
      lineWidth = width * .125;
    } else {
      randomStart = width;
      lineWidth = width;
    }

    start = randomStart * lineWidth;
    end = start + lineWidth;

    for (int y = 0; y < height; y += step) {
      line(start, y, end, y);
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

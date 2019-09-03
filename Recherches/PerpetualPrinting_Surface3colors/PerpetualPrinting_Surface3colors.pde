int randomPicker, randomColor, randomWidth;
float randomStart, rectWidth, start;

void setup() {
  colorMode(RGB, 1);
  // blendMode(MULTIPLY);

  size(600, 900);

  background(1);
  noStroke();

  frameRate(1);
}

void draw() {
  // RECT COLOR
  color o = color(1, .4, 0);
  color g = color(.4, 1, 0);
  color p = color(.4, 0, 1);

  randomPicker = round(random(2));

  if (randomPicker == 2) {
    randomColor = o;
  } else if (randomPicker == 1) {
    randomColor = g;
  } else {
    randomColor = p;
  }

  fill(randomColor);

  for (int y = 0; y < height; y += rectWidth) {
    // RECT WIDTH (1/16, 1/8, 1/4, 1/2)
    randomWidth = round(random(16));

    // RECT = 1/2 WIDTH
    if (randomWidth % 16 == 0) {
      // RECT START = COLUMN 1-2
      randomStart = round(random(1));
      rectWidth = width * .5;
      start = rectWidth * randomStart;
    }
    // RECT = 1/4 WIDTH
    else if (randomWidth % 4 == 0) {
      // RECT START = COLUMN 1-4
      randomStart = round(random(3));
      rectWidth = width * .25;
      start = rectWidth * randomStart;
    }
    // RECT WIDTH = 1/8 WIDTH
    else if (randomWidth % 2 == 0) {
      // RECT START = COLUMN 1-8
      randomStart = round(random(7));
      rectWidth = width * .125;
      start = rectWidth * randomStart;
    }
    // RECT WIDTH = 1/16 WIDTH
    else {
      // RECT START = COLUMN 1-16
      randomStart = round(random(15));
      rectWidth = width * .0625;
      start = rectWidth * randomStart;
    }

    rect(start, y, rectWidth, rectWidth);
  }
}

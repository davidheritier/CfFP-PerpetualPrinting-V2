int randomPicker, randomColor, randomWidth;
float randomStart, lineWidth, start, end;

// INTERVAL BETWEEN THE LINES
int step = 5;

void setup() {
  colorMode(RGB, 1);

  size(600, 900);

  background(1);
  noFill();
  strokeWeight(1);

  frameRate(5);
}

void draw() {
  // LINE WIDTH (1/8, 1/4, 1/2, 1/1)
  randomWidth = round(random(16));

  // LINE = 1/1 WIDTH
  if (randomWidth % 16 == 0) {
    lineWidth = width;
    start = 0;
  }
  // LINE = 1/2 WIDTH
  else if (randomWidth % 8 == 0) {
    // LINE START = COLUMN 1-2
    randomStart = round(random(1));
    lineWidth = width * .5;
    start = randomStart * lineWidth;
  }
  // LINE = 1/4 WIDTH
  else if (randomWidth % 4 == 0) {
    // LINE START = COLUMN 1-4
    randomStart = round(random(3));
    lineWidth = width * .25;
    start = randomStart * lineWidth;
  }
  // LINE WIDTH = 1/8 WIDTH
  else {
    // LINE START = COLUMN 1-8
    randomStart = round(random(7));
    lineWidth = width * .125;
    start = randomStart * lineWidth;
  }

  end = start + lineWidth;

  // LINE COLOR
  color c = color(0, 1, 1);
  color m = color(1, 0, 1);
  color j = color(1, 1, 0);
  color n = color(0, 0, 0);

  randomPicker = round(random(3));

  if (randomPicker == 3) {
    randomColor = c;
  } else if (randomPicker == 2) {
    randomColor = m;
  } else if (randomPicker == 1) {
    randomColor = j;
  } else {
    randomColor = n;
  }

  stroke(randomColor);

  for (int y = 0; y < height; y += step) {
    line(start, y, end, y);
  }
}

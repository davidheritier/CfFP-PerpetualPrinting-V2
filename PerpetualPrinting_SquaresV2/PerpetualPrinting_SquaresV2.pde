// import processing.pdf.*;

// NUMBER OF COLUMNS
int col = 17;

// COLOR LUMINOSITY 0-1
float lum = .5;

int randomPicker, randomColor;
float randomStart, rectSize, start;
float xoff = 0.0;

void setup() {
  colorMode(RGB, 1);
  blendMode(MULTIPLY);

  size(816, 816); //, PDF, "Squares.pdf");

  background(1);
  noStroke();

  // frameRate(5);
  // noLoop();
}

void draw() {
  //if (frameCount < 50) {
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
    
    float _noise           = noise(xoff) * 100;
    float _noiseIndex      = _noise / (100 / (col - 1) );
    
    int _noiseColumnNuber  = round(_noiseIndex);

    rect(round(noise(xoff) * 100 / (100 / col)) * rectSize, y, rectSize, rectSize);
    println("-----");
    println(noise(xoff) * 100);
    println(round(noise(xoff) * 100 / (100 / col - 1)));
    
    println(_noiseColumnNuber);
    
    println("-----");
    xoff += .1;
  }
}

// Get the renderer
// PGraphicsPDF pdf = (PGraphicsPDF) g;

// When finished drawing, quit and save the file
//if (frameCount == 50) {
//  exit();
//} else {
//  pdf.nextPage();  // Tell it to go to the next page
//}
//}

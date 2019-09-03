int i = 0;
int step = 100;
int minSize = step / 10;
int maxSize = step;

void setup() {
  size(400, 900);

  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  noStroke();

  // noLoop();
  frameRate(1);
  background(0, 0, 100);
  blendMode(MULTIPLY);
}

void draw() {
  if (i < 5) {
    for (int y = step / 2; y < height; y += step) {
      float yPos = y + (sin(i) * 2);
      
      for (int x = step / 2; x < width; x += step) {
        float xPos = x + random(minSize);
        
        float size = random(minSize, maxSize);
        
        float h = random(360);
        fill(h, 50, 100);

        rect(xPos, yPos, size, size);
      }
    }
    i++;
  }
}

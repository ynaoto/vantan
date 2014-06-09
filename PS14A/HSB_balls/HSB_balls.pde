float brightness = 0;

void setup() {
  size(500, 500);
  colorMode(HSB, 255);
}

void draw() {
  background(100);
  int i, j;
  for (i = 0; i < 500; i += 50) {
    for (j = 0; j < 500; j += 50) {
      fill(i, j, brightness);
      ellipse(i, j, brightness, 20);
    }
  }
  brightness++;
  if (255 < brightness) {
    brightness = 0;
  }
}



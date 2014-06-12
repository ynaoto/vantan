int count = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);
  strokeWeight(count);
  stroke(255, 0, 255);
  ellipse(250, 250, 100, 200);
  count++;
  if (1000 < count) {
    count = 0;
  }
}


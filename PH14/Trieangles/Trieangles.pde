float a = 0;

void setup() {
  size(1000, 500);
}

void draw() {
  background(255);
  
  int x, y;
  for (x = 0; x < 1000; x += 50) {
    for (y = 0; y < 500; y += 50) {
      float r = random(256);
      float g = random(256);
      float b = random(256);
      fill(r, g, b, a);
      //ellipse(x, y, 55, 0.1*x);
      triangle(x, y, x-30, y+a, x+30, y+a);
    }
  }
  a += 1;
  if (255 < a) {
    a = 0;
  }
}

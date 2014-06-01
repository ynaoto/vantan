float b = 0;
int n = 0;

void setup() {
  size(500, 500);
}

void draw() {
  if (n % 2 == 0) {
    background(255, 0, 0);
  } else {
    background(0, 0, 255);
  }
  n++;
  int i, j;
  for (i = 0; i < 500; i += 20) {
    for (j = 0; j < 500; j += 20) {
      fill(i, j, b);
      ellipse(i, j, b/20, b/20);
    } 
  }
  b = (b + 10) % 256;
}

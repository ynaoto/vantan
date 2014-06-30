int count;
color c1, c2;

void setup() {
  size(300, 300);
  c1 = color(255, 0, 0);
  c2 = color(0, 255, 0);
  count = 0;
}

void draw() {
  background(255);
  color c;
  if ((int)(count / 100) % 2 == 0) {
    c = c1;
  } else {
    c = c2;
  }
  fill(c);
  ellipse(width/2, height/2, 50, 50);
  count++;
}


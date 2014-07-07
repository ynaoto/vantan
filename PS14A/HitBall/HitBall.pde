void setup() {
  size(300, 300);
}

void draw() {
  float cx = 100;
  float cy = 100;
  float r = 25;
  background(255);
  float d2 = (mouseX-cx)*(mouseX-cx) + (mouseY-cy)*(mouseY-cy); 
  if (d2 < r*r) {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 0);
  }
  ellipse(cx, cy, 2*r, 2*r);
  fill(0);
  text(mouseX, 10, 20);
  text(mouseY, 10, 40);
  text(d2, 10, 60);
}

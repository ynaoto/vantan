void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  fill(0, 255, 0);
  ellipse(100, 100, 50, 50);
  fill(0);
  text(mouseX, 10, 20);
  text(mouseY, 10, 40);
}

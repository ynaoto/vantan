void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 10, 10);
  fill(0, 0, 255);
  ellipse(pmouseX, pmouseY, 10, 10);
}


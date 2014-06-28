int x, y;

void setup() {
  size(300, 300);
  x = width/2;
  y = height/2;
}

void draw() {
//  background(0);
  noStroke();
  fill(100, 100, 100, 10);
  rect(0, 0, width, height);
  stroke(1);
  fill(255);
  x = mouseX;
  y = mouseY;
  ellipse(x, y, 20, 20);
}

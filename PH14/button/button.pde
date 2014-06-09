float x = 10;
float y = 10;
float w = 100;
float h = 50;
color bg = color(255, 0, 0);

void setup() {
  size(300, 300);
}

void draw() {
  background(bg);
  rect(x, y, w, h);
}

void mouseClicked() {
  float mx = mouseX;
  float my = mouseY;
  if (x < mx && mx < x + w && y < my && my < y + h) {
    bg = color(0, 255, 0);
  } 
}


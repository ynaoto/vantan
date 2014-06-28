float x, y;

void setup() {
   size(300, 300);
   x = width / 2 - 100;
   y = height / 2 + 50;
}

void draw() {
//   background(100, 100, 100);
   noStroke();
   fill(100, 100, 100, 10);
   rect(0, 0, width, height);
   fill(255);
   textSize(50);
   x = mouseX;
   y = mouseY;
   text("Ly", x, y);
}

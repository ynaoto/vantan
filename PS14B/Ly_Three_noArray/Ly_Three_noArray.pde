class Mover {
  float x, y;
  Mover() {
    x = random(width);
    y = random(height);
  }
  void follow(float tx, float ty) {
    x += 0.1 * (tx - x);
    y += 0.1 * (ty - y);
  }
  void draw() {
    fill(255);
    textSize(50);
    text("Ly", x, y);
  }
}

Mover m1, m2, m3;

void setup() {
   size(300, 300);
   m1 = new Mover();
   m2 = new Mover();
   m3 = new Mover();
}

void draw() {
   background(100, 100, 100);
//   noStroke();
//   fill(100, 100, 100, 10);
//   rect(0, 0, width, height);
   m1.follow(mouseX, mouseY);
   m1.draw();
   m2.follow(mouseX, mouseY);
   m2.draw();
   m3.follow(mouseX, mouseY);
   m3.draw();
}

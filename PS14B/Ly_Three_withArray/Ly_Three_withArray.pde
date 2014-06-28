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

ArrayList<Mover> movers;

void setup() {
   size(300, 300);
   movers = new ArrayList<Mover>();
   for (int i = 0; i < 3; i++) {
     Mover m = new Mover();
     movers.add(m);
   }
}

void draw() {
   background(100, 100, 100);
//   noStroke();
//   fill(100, 100, 100, 10);
//   rect(0, 0, width, height);
   int n = movers.size();
   for (int i = 0; i < n; i++) {
     Mover m = movers.get(i);
     m.follow(mouseX, mouseY);
     m.draw();
   }
}

float x = 10;
float y = 40;
int count = 0;
String message = "Hello";

void setup() {
  size(1000, 100);
}

void draw() {
  background(0);
  textSize(32);
//  x += 0.1 * (mouseX - x);
//  x = mouseX;
  x += 0.01 * (900 - x);
  text(count, x, y);
  count++;
  text(message, 10, 70);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y--;
    } else if (keyCode == DOWN) {
      y++;
    } else if (keyCode == RIGHT) {
      x++;
    } else if (keyCode == LEFT) {
      x--;
    } 
  } else {
//    message = message + key;
    message = "" + key;
    x = random(width);
    y = random(height);
  }
}

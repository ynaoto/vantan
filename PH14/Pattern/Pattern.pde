/**
 * Patterns. 
 * 
 * Move the cursor over the image to draw with a software tool 
 * which responds to the speed of the mouse. 
 */

class Ball {
  int x, y, px, py;

  Ball(int x, int y, int px, int py) {
    this.x = x;
    this.y = y;
    this.px = px;
    this.py = py;
  }
  void draw() {
    float speed = abs(this.x-this.px) + abs(this.y-this.py);
    stroke(speed);
    ellipse(this.x, this.y, speed, speed);
  }
};

ArrayList<Ball> balls;

void setup() {
  size(640, 360);
  background(102);
  balls = new ArrayList<Ball>();
}

void draw() {
  // Call the variableEllipse() method and send it the
  // parameters for the current mouse position
  // and the previous mouse position
  background(102);
  Ball ball = new Ball(mouseX, mouseY, pmouseX, pmouseY);
  balls.add(ball);
  
  for (Ball b : balls) {
    b.draw();
  }
}

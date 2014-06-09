int stage = 1;

void setup() {
}

void draw1() {
  background(255, 0, 0);
}

void draw2() {
  background(0, 0, 255);
}

void draw() {
  if (stage == 1) {
    draw1();
  } else {
    draw2();
  }
}

void mouseClicked() {
  if (stage == 1) {
    stage = 2;
  } else {
    stage = 1;
  }
}


class Man {
  int age;
  float tall;
  float weight;
  String name;
  boolean chicken;
  int bartenderLevel;
  
  void draw() {
    float x = this.weight;
    float y = this.tall;
    //text(this.name, x, y * -1 + 200);
    text(this.name, 2*x, height - y);
  }
}

Man fukai;
Man johnSmith;

void setup() {
  size(200, 200);
  fukai = new Man();
  fukai.age = 15;
  fukai.tall = 167.1;
  fukai.weight = 60.7;
  fukai.name = "Naoyuki Fukai";
  fukai.chicken = false;
  fukai.bartenderLevel = 8;
  
  johnSmith = new Man();
  johnSmith.age = 15;
  johnSmith.tall = 160.5;
  johnSmith.weight = 48.7;
  johnSmith.name = "John Smith";
  johnSmith.chicken = true;
  johnSmith.bartenderLevel = 0;
}

void draw() {
  background(0);
  fukai.draw();
  johnSmith.draw();
}

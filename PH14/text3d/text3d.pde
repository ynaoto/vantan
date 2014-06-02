void setup() {
    size(400,400,P3D);    
    textSize(50);
} 

void draw() {  
    background(0);
    translate(width * .5, height*.5, 0);
    
    pushMatrix();
    noStroke();
    directionalLight(255, 0, 0, mouseX, mouseY, 0);
    directionalLight(0, 255, 0, 0, mouseX, mouseY);
    directionalLight(0, 0, 255, mouseX, 0, mouseY);
    ambientLight(50, 50, 50);
    translate(-200, 0, 0);
    for (int i = 0; i < 10; i++) {
      sphere(20);
      translate(50, 0, 0);
    }
    popMatrix();
    
    pushMatrix();
    rotateY(map(mouseX,0,width,-PI,PI));
    rotateX(map(mouseY,0,height,-PI,PI));
    text("foo!", -20, 0, 20);
    popMatrix();
}

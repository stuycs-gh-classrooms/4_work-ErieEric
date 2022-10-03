int movingX;
int movingY;
int radius;

void setup() {
  size(500, 500);
  movingX = 50;
  movingY = 150;
}//setup

void draw() {
  background(255);
  fill(4,255,255);
  circle(50, 50, 100);
  circle(150, 50, 100);
  circle(250, 50, 100);
  circle(350, 50, 100);
  circle(450, 50, 100);
  fill(255,0,255);
  circle(movingX, movingY, 100);
  movingX++;
  if (movingX == 450 && movingY == 150){
    movingX = 50;
    movingY = 250;
  }
  else if (movingX == 450 && movingY == 250){
    movingX = 50;
    movingY = 350;
  }
  else if (movingX == 450 && movingY == 350){
    movingX = 50;
    movingY = 450;
  }
  else if (movingX == 450 && movingY == 450){
    movingX = 50;
    movingY = 150;
  }
}

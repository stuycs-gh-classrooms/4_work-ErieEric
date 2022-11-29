
int score;
Ball[] balls;
color SAFE_COLOR = color(0, 255, 255);
color COLLISION_COLOR = color(255, 0, 255);

void setup() {
  size(600, 400);
  background(0);
  score = 0;
  balls = new Ball[10];
  setupBalls();
}//setup

void setupBalls() {
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball();
  }//loop through array, creating new Ball objects
}//setupBalls

void draw() {
  background(0);
  for (int i=0; i<balls.length ; i++) {
    balls[i].c = SAFE_COLOR;
    for (int k = 0; k < balls.length; k++){
      if (balls[i].collisionCheck(balls[k])){
        balls[i].setColor(COLLISION_COLOR);
      }
    }
  balls[i].display();
  balls[i].move();
  
  }
  
}//draw

void keyPressed() {
  if (key == ' ') {
    for (int i=0; i<balls.length; i++) {
    balls[i].reset();
    }
  }
  else if (key == 'r'){
      for (int i=0; i<balls.length; i++) {
      balls[i].changeSpeed(int(random(5)), int(random(5)));
      }
  }
  //reset
  else if (key == CODED) {
    if (keyCode == UP) {
     for (int i=0; i<balls.length; i++) {
     balls[i].changeSpeed(0, -1);
     }
    }//up
    else if (keyCode == DOWN) {
      for (int i=0; i<balls.length; i++) {
      balls[i].changeSpeed(0, 1);
      }
    }//down
    else if (keyCode == LEFT) {
      for (int i=0; i<balls.length; i++) {
      balls[i].changeSpeed(-1, 0);
      }
    }//left
    else if (keyCode == RIGHT) {
      for (int i=0; i<balls.length; i++) {
      balls[i].changeSpeed(1, 0);
      }
    }//right
  }//non ASCII keys
  }



void mousePressed() {
  for (int i=0; i<balls.length; i++) {
  if ( balls[i].onBall(mouseX, mouseY) ) {
    score+= balls[i].getScoreValue();
    balls[i].reset();
    println(score);
  }
  }//hit
}//mousePressed

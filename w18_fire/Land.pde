class Land {

 Land() {
    x = 0;
    y = height/2;
    state = 0;
  }
  
  Land(int boxx, int boxy, int size, int type) {
    x = boxx;
    y = boxy;
    landSize = size;
    state = type;
    nextState = type;
  }
  
  void display() { 
    if(nextState == 0) {
      fill(DIRT_COLOR);
    }
    else if(nextState == 1) {
      fill(FIRE_COLOR);
      this.state = 1;
    }
    else if(nextState == 2) {
      fill(BURNT_COLOR);
    }
    else if(nextState == 3) {
      fill(GRASS_COLOR);
    }
    
    square(x,y,landSize);
  }
  
  void updateNextState(int state) {
    if(this.state == 1) {
      nextState = 2;
    }
    else if(state == 1 && this.state == 3) {
      nextState = 1;
    }
  }
  
  void changeState() {
    if(nextState == 0) {
      display();
    }
    else if(nextState == 1) {
      display();
    }
    else if(nextState == 2) {
      display();
    }
  }
}

class Ship {
  int x, y, sWidth, sHeight;
  int speed;

  Ship(int cx, int cy, int w, int h) {
    x = cx;
    y = cy;
    sWidth = w;
    sHeight = h;
    speed = SPEED;
    
  }

  void display() {
    rect(x - sWidth/2, y, sWidth, sHeight);
  }


  void moveRight() {
    x+= speed;
  }
  
  void moveLeft() {
    x-= speed;
  }
}

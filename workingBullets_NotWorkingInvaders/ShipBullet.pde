class ShipBullet{
  int x, y, diameter;

  ShipBullet(int bx, int by, int bDiameter){
    x = bx;
    y = by;
    diameter = bDiameter;
  }
  void display(){
    circle(x, y, diameter);
  }
  
  void moveBulletUp(){
    y--;
    }

  
 
}
  

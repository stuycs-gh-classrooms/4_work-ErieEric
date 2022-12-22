//ship
int SHIP_WIDTH, SHIP_HEIGHT;
int Ship_yOffset;
int SPEED;
Ship ship;



//invaderGrid
int Irow;
int Icol;
InvaderArray i;


//invaderBullet
int ShipBulletY, ShipBulletX, ShipBulletDiameter;
ShipBullet shipBullet;
boolean ShipShoot;

void setup(){
  size(700,350);
  //ship
  SHIP_WIDTH = 100;
  SHIP_HEIGHT = 50;
  Ship_yOffset = 75;
  SPEED = 10;
  ship = new Ship(width/2, height-Ship_yOffset , SHIP_WIDTH, SHIP_HEIGHT);
  ship.display();
  //ship
  

  
  Irow = 3;
  Icol = 5;
  i = new InvaderArray(Irow, Icol);
  i.setupGrid();
  i.showGrid();
  
  //ShipBulletY & diameter
  ShipBulletDiameter = 20;
  
  
}

void draw(){
  background(0);
  ship.display();
  i.showGrid();
  i.moveGrid(width);
  
  //  Had to put invBulletX in draw because the X value for the bullet always changes with the Ship.
  // It's always different so the starting position of the bullet must be changed everytime.
  
  
  
  ShipBulletY = height-Ship_yOffset;
  
  println(ShipShoot);                   
  if(ShipShoot == true){
    shipBullet.display();
    shipBullet.moveBulletUp(); 
    
   
  }
  
}



void keyPressed(){
  //Keys for moving
  if (key == 'd'){
    if ( ship.x <= width - SHIP_WIDTH/2){
      ship.moveRight();
    }
  }
  if (key == 'a'){
    if ( ship.x >= SHIP_WIDTH/2){
      ship.moveLeft();
    }
  }
  //Key for firing
  if (key == ' '){
    //boolean firing = true;
    ShipShoot = true;
    ShipBulletX = ship.x;
    shipBullet = new ShipBullet(ShipBulletX, ShipBulletY, ShipBulletDiameter);
    //shipBullet.moveBulletUp();
    
  }
}

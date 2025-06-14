PImage alienMissile, alienShip, playerMissile, enemyShip, playerShip;

void setup(){
  size(800,800);
  
  alienMissile = loadImage("alienMissile.png");
  alienShip = loadImage("alienShip.png");
  playerMissile = loadImage("missileimage.png");
  enemyShip = loadImage("ship3.png");
  playerShip = loadImage("ship4.png");
}

void draw(){
  background(0);
  
  circle(400,400,50);
  rect(10,10,400,400);
}

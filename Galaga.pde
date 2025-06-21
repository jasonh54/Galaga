PImage alienMissile, alienShip, playerMissile, enemyShip, playerShip;
boolean aButton, wButton, sButton, dButton;
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

}

void keyPressed(){
  if(keyCode == 65){
    aButton = true;
  }
  if(keyCode == 68){
    dButton = true;
  }
  if(keyCode == 83){
    sButton = true;
  }
  if(keyCode == 87){
    wButton = true;
  }
}
void keyReleased(){
  if(keyCode == 65){
    aButton = false;
  }
  if(keyCode == 68){
    dButton = false;
  }
  if(keyCode == 83){
    sButton = false;
  }
  if(keyCode == 87){
    wButton = false;
  }
}

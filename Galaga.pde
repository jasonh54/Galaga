PImage alienMissile, alienShip, playerMissile, enemyShip, playerShip;


boolean aButton, wButton, sButton, dButton, spaceButton;

player player1;
ArrayList<playerMissile> pMissileList;

ArrayList<enemy> enemies = new ArrayList<enemy>();
spawner sp;

void setup(){
  size(800,800);
  
  alienMissile = loadImage("images/alienMissile.png");
  alienShip = loadImage("images/aliensh.png");
  playerMissile = loadImage("images/missileimage.png");
  enemyShip = loadImage("images/ship3.png");
  playerShip = loadImage("images/ship4.png");
  

  sp = new spawner();

  pMissileList = new ArrayList<playerMissile>();
  player1 = new player(400,400,playerShip);

}

void draw(){
  background(0);
  
  sp.spawn();
  
  for(int i = 0; i<enemies.size(); i++){
    enemies.get(i).show();
    enemies.get(i).move();
  }

  for(int i=0;i<pMissileList.size();i++){
    pMissileList.get(i).show();
    pMissileList.get(i).move();
  }
  
  player1.show();
  player1.move();
  player1.shoot();
  


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
  if(keyCode == 32){
    spaceButton = true;
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
  
  if(keyCode == 32){
    spaceButton = false;
  }
}

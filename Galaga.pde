PImage alienMissile, alienShip, playerMissile, enemyShip, playerShip;


boolean aButton, wButton, sButton, dButton, spaceButton;

player player1;
ArrayList<playerMissile> pMissileList;

ArrayList<enemy> enemies = new ArrayList<enemy>();
spawner sp;
enemyTwo et;
ArrayList<alienMissile> am = new ArrayList<alienMissile>();
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
  et = new enemyTwo(400,400,enemyShip);
  am = new ArrayList<alienMissile>();
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

  player1.getHit();
  
  

  et.show();
  et.move();
  et.shoot();
  for(int i=0;i<am.size();i++){
    am.get(i).show();
    am.get(i).move();
  }


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

public boolean collisionCheck(float x1, float x2, float y1, float y2){
  if((abs(x1-x2) < 30 ) && (abs(y1-y2) < 30 )){
    return true;
  }
  return false;
}

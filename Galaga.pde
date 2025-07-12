PImage alienMissile, alienShip, playerMissile, enemyShip, playerShip, healUpimg, bossimg, plasmaimg;


boolean aButton, wButton, sButton, dButton, spaceButton;

player player1;
ArrayList<playerMissile> pMissileList;

ArrayList<enemy> enemies = new ArrayList<enemy>();
spawner sp;
ArrayList<enemyTwo> enemyTwos = new ArrayList<enemyTwo>();
ArrayList<alienMissile> am = new ArrayList<alienMissile>();

int score;

healUp hu;

void setup(){
  size(800,800);
  
  alienMissile = loadImage("images/alienMissile.png");
  alienShip = loadImage("images/aliensh.png");
  playerMissile = loadImage("images/missileimage.png");
  enemyShip = loadImage("images/ship3.png");
  playerShip = loadImage("images/ship4.png");
  healUpimg = loadImage("images/heal-powerup.png");
  bossimg = loadImage("images/bossenemy.png");
  plasmaimg = loadImage("images/plasmaball.png");

  sp = new spawner();

  pMissileList = new ArrayList<playerMissile>();
  player1 = new player(400,400,playerShip);
  //et = new enemyTwo(400,400,enemyShip);
  am = new ArrayList<alienMissile>();
  
  hu = new healUp(random(0,800), random(-2000,-1000), healUpimg);
  
  
  score = 0;
}

void draw(){
  background(0);
  text("hp: " + player1.hp,50,50);
  text("score: " + score, 350, 50 );
  textSize(35);
  
  
  
  sp.spawn();
  
  for(int i = 0; i<enemies.size(); i++){
    enemies.get(i).show();
    enemies.get(i).move();
    enemies.get(i).getHit();
  }

  for(int i=0;i<pMissileList.size();i++){
    pMissileList.get(i).show();
    pMissileList.get(i).move();
  }
  

  
  player1.show();
  player1.move();
  player1.shoot();
  player1.getHit();
  player1.boundaries();
  player1.playerDeath();
  
  
  hu.show();
  hu.move();
  hu.getHit();
  
  

  for(int i = 0; i<enemyTwos.size(); i++){
    enemyTwos.get(i).show();
    enemyTwos.get(i).move();
    enemyTwos.get(i).shoot();
    enemyTwos.get(i).getHit();
  }
  for(int i=0;i<am.size();i++){
    am.get(i).show();
    am.get(i).move();
  }

  deleteEnemies();
  deletePlayerMissiles();
  deleteDeadEnemies();
  deleteAlienMissiles();
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

public void deleteEnemies(){
  for(int i=0;i<enemies.size();i++){
    if(enemies.get(i).alive == false){
      enemies.remove(i);
      i--;
    }
  }
}

public void deletePlayerMissiles(){
  for(int i=0;i<pMissileList.size();i++){
    if(pMissileList.get(i).alive == false){
      pMissileList.remove(i);
      i--;
    }
  }
}
public void deleteDeadEnemies(){
  for(int i = 0; i < enemyTwos.size(); i++){
    if(enemyTwos.get(i).alive == false){
      enemyTwos.remove(i);
      i--;
    }
  }
}
public void deleteAlienMissiles(){
  for(int i = 0; i < am.size(); i++){
    if(am.get(i).alive == false){
      am.remove(i);
      i--;
    }
  }
}

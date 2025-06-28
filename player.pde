class player{
  float x, y ,w, h;
  PImage sprite;
  int timer;
  int hitTimer;
  int hp;
  player(float x,float y,PImage sprite){
    this.x = x;
    this.y = y;
    this.sprite = sprite;
    this.w = 100;
    this.h = 100;
    this.timer = 0;
    this.hitTimer = 0;
    this.hp = 3;
  }
 
  
  public void show(){
    if(hp > 0){
      image(sprite,x-w/2,y-h/2,w,h);
    }
    
  }
  
  public void move(){
    if(aButton == true){
      this.x -= 5;
    }
    if(wButton == true){
      this.y -= 5;
    }
    
    if(sButton == true){
      this.y += 5;
    }
    
    if(dButton == true){
      this.x += 5;
    }
  }
  
  
  public void shoot(){
    timer++;
    if(spaceButton == true && timer > 15){
      pMissileList.add(new playerMissile(x,y,15,playerMissile));
      timer = 0;
    }
  }
  
  public void getHit(){
    hitTimer++;
    for(int i = 0;i<enemies.size();i++){
      if(collisionCheck(x,enemies.get(i).x,y, enemies.get(i).y) == true && hitTimer > 60){
        hp -= 1;
        hitTimer = 0;
      }
    }

  }
}

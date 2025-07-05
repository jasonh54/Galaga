class enemy {
  float x;
  float y;
  float w;
  float h;
  PImage sprite;
  boolean alive;
  
  enemy(float x, float y, PImage sprite){
     this.x = x;
     this.y = y;
     this.w = 50;
     this.h = 50;
     this.sprite = sprite;
     this.alive = true;
  }
  void show(){
    if(alive != false){
      image(sprite, x-w/2, y-h/2, w, h);
    }
    
  }
  void move(){
    y += 1;
  }
  
  public void getHit(){
    for(int i=0;i<pMissileList.size();i++){
      if(collisionCheck(pMissileList.get(i).x, x, pMissileList.get(i).y, y) == true){
        this.alive = false;
        pMissileList.get(i).alive = false;
      }
    }
  }
  
}
class enemyTwo{
  float x;
  float y;
  float w;
  float h;
  PImage sprite;
  int time;
  enemyTwo(float x, float y, PImage sprite){
     this.x = x;
     this.y = y;
     this.w = 100;
     this.h = 100;
     this.sprite = sprite;
     this.time = int(random(0,600));
  }
  void show(){
    image(sprite, x-w/2, y-h/2, w, h);
  }
  void move(){
    y += 1;
  }
  void shoot(){
      time--;
      if(time == 0){
        am.add(new alienMissile(x,y,3,alienMissile));
        time = 300;
      }
    }
}
class alienMissile{
  float x;
  float y;
  float w;
  float h;
  private float speed;
  private PImage sprite;
  boolean alive = true;
  alienMissile(float x, float y, float speed,PImage sprite){
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.w = 25;
    this.h = 50;
    this.sprite = sprite;
  }
  public void show(){
    if(alive == true){
      image(sprite,x-w/2,y-h/2,w,h);
    }
  }
  
  public void move(){
    this.y += speed;
  }
}

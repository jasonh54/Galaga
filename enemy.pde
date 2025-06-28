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
  
}
class enemyTwo{
  float x;
  float y;
  float w;
  float h;
  PImage sprite;
  enemyTwo(float x, float y, PImage sprite){
     this.x = x;
     this.y = y;
     this.w = 100;
     this.h = 100;
     this.sprite = sprite;
  }
  void show(){
    image(sprite, x-w/2, y-h/2, w, h);
  }
  void move(){
    y += 1;
  }
}

class enemy {
  float x;
  float y;
  float w;
  float h;
  PImage sprite;
  
  enemy(float x, float y, PImage sprite){
     this.x = x;
     this.y = y;
     this.w = 50;
     this.h = 50;
     this.sprite = sprite;
  }
  void show(){
    image(sprite, x-w/2, y-h/2, w, h);
  }
  void move(){
    y -= 1;
  }
  
}

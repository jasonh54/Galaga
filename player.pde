class player{
  float x, y ,w, h;
  PImage sprite;
  int timer;
  player(float x,float y,PImage sprite){
    this.x = x;
    this.y = y;
    this.sprite = sprite;
    this.w = 100;
    this.h = 100;
    this.timer = 0;
  }
  
  public void show(){
    image(sprite,x-w/2,y-h/2,w,h);
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
}

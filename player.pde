class player{
  float x, y ,w, h;
  PImage sprite;
  player(float x,float y,PImage sprite){
    this.x = x;
    this.y = y;
    this.sprite = sprite;
    this.w = 100;
    this.h = 100;
  }
  
  public void show(){
    image(sprite,x,y,w,h);
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
    if(spaceButton == true){
      pMissileList.add(new playerMissile(x,y,15,playerMissile));
    }
  }
}

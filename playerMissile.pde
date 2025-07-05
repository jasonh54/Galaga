class playerMissile{
  float x;
  float y;
  float w;
  float h;
  private float speed;
  private PImage sprite;
  private boolean alive;
  
  playerMissile(float x, float y, float speed,PImage sprite){
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.w = 25;
    this.h = 50;
    this.sprite = sprite;
    this.alive = true;
  }
  
  
  public void show(){
    if(alive != false){
      image(sprite,x-w/2,y-h/2,w,h);
    }
    
  }
  
  public void move(){
    this.y -= speed;
  }
  

}

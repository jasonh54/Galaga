class healUp{
  float x,y,w,h;
  PImage sprite;
  int timer;
  
  public healUp(float x,float y,PImage sprite){
    this.x = x;
    this.y = y;
    this.w = 40;
    this.h = 40;
    this.sprite = sprite;
    this.timer = 0;
    
  }
  
  public void show(){
    image(sprite,x-w/2,y-h/2,w,h);
  }
  
  
  public void move(){
    this.y+=2;
  }
  
  public void getHit(){
    timer++;
    
      if(collisionCheck(x, player1.x, y, player1.y) == true && timer > 30 && player1.hp < 3){
        this.x = random(0,800);
        this.y = random(-2000,-1000);
        player1.hp++;
        timer = 0;

      }

  }
  
  
}

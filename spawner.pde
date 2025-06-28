
class spawner{
  float timer;
  public spawner(){
  
  }
  void spawn(){
    timer += 1;
    if(timer>60){
      enemy e = new enemy(random(0,800), -100, alienShip);
      enemies.add(e);
      timer = 0;
    }
  }
}

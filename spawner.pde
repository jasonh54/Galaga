class spawner{
  float timer;
  float timerTwo;
  public spawner(){
  
  }
  void spawn(){
    timer += 1;
    if(timer>60){
      enemy e = new enemy(random(0,800), -100, alienShip);
      enemies.add(e);
      timer = 0;
    }
    timerTwo+=1;
    if(timerTwo>120){
      enemyTwo et = new enemyTwo(random(0,800), -100, enemyShip);
      enemyTwos.add(et);
      timerTwo = 0;
    }
  }
}

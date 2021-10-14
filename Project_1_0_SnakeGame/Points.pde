class Points 
{
  PVector food;
  int score=0;

  Points() 
  {
    food = new PVector(40,80);
  }

  void positionFood() 
  {
    food.x = int(random(1, 13))*20;
    food.y = int(random(1, 13))*20;
  }

  void drawFood()
  {
    noStroke();
    fill(255,0,0);
    rect(food.x, food.y, 20, 20);
  }
  
  void wall()
  {
    if(s.pos.x<20 || s.pos.x>260 || s.pos.y<20 || s.pos.y>260)
    {
    
      bg();
      
      fill(0);
      textSize(30);
      textAlign(CENTER);
      text("GAME OVER", width/2,110);
      textSize(20);
      textAlign(CENTER);
      text("Score: " +score,width/2, 145);
      textSize(25);
      textAlign(CENTER, CENTER);
      text("Press r to restart" , width/2, 170);
      noLoop();
  
    }
  }
  void Score()
  {
    if (s.pos.x == food.x && s.pos.y == food.y)
    {
      positionFood();
      drawFood();
      
      score ++;
    }
  }
  
 
}

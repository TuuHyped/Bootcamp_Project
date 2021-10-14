Points p;
Snake s;
void setup()
{
  size(300,300);
  p=new Points();
  s=new Snake();
}
  
void bg()
{
  stroke(1);
  strokeWeight(20);
  fill(255);
  rect(10,10,280,280);
}
  
 void draw()
{
  bg();
  s.move();
  s.updateSnake();
  p.drawFood();
  s.drawSnake();
  
  p.wall();
  p.Score();
  s.hitBody();
}

void keyPressed()
{
  if (key == 'r') {
      
      setup();
      loop();
      p.score = 0;
    }
}
 

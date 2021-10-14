class Snake 
{
int speed = 150;
float smove = 20;
int size = 20;
int currentDir = -1;

ArrayList<PVector> heads = new ArrayList<PVector>();

PVector pos;
PVector currentHead;

Snake()
{
  pos = new PVector(120,120);
}

void drawSnake()
{
  
  noStroke();
  fill(0);
  rect(pos.x,pos.y,size,size);  
  for(PVector h : heads)
  {
    rect(h.x,h.y,size,size); 
  }

}

void updateSnake()
{
  heads.add(pos.copy());
  
  if (heads.size()>p.score+1)
  {
    heads.remove(0);
  }
}

void hitBody()
{
  PVector head = heads.get(0);
  
  for(int i=1;i<heads.size();i++)
  {
    if(head.x == heads.get(i).x && head.y == heads.get(i).y)
    {
      bg();
      
      fill(0);
      textSize(30);
      textAlign(CENTER);
      text("GAME OVER", width/2,110);
      textSize(20);
      textAlign(CENTER);
      text("Score: " +p.score,width/2, 145);
      textSize(25);
      textAlign(CENTER, CENTER);
      text("Press r to restart" , width/2, 170);
      noLoop();
    }
  }
}

void move()
{
  
  if(key == 'w' || keyCode == UP)
  {
    if(currentDir != 1)
    {
      pos.y = pos.y - smove;
      delay(speed);
      currentDir = 0;
    }
    else
    {
      pos.y = pos.y + smove;
      delay(speed);
    }
  }
  
  if((key == 's' || keyCode == DOWN))
  {
    if(currentDir != 0)
    {
      pos.y = pos.y + smove;
      delay(speed);
      currentDir = 1;
    }
    else
    {
      pos.y = pos.y - smove;
      delay(speed);
    }
  }
  
  if(key == 'a' || keyCode == LEFT)
  {
    if(currentDir != 3)
    {
      pos.x = pos.x - smove;
      delay(speed);
      currentDir = 2;
    }
    else
    {
      pos.x = pos.x + smove;
      delay(speed);
    }
  }
  if(key == 'd' || keyCode == RIGHT)
  {
    if(currentDir != 2)
    {
      pos.x = pos.x + smove;
      delay(speed);
      currentDir = 3;
    }
    else
    {
      pos.x = pos.x - smove;
      delay(speed);
    }
  }
}

}

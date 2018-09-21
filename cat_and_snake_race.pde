PImage cat;
PImage snake;
int catY = 29;
int snakeY = 29;





void setup()
{
  fullScreen();
  cat = loadImage("cat.jpg");
  snake = loadImage("snake.png");
}
boolean a = false;

void draw()
{
  background(0);
  imageMode(CENTER);
  image(cat,50,catY,230,190);
  image(snake,2500,snakeY,230,190);
  
  if (catY>=1500)
  {
    textSize(100);
    text("Cat Wins!",1000,1000);
    a = true;
  }

  if (snakeY>=1500)
  {
    textSize(100);
    text("Snake Wins!",1000,1000);
    a = true;
   
  }
  if (a)
  {
    noLoop();
  }
}




void keyPressed()
{
  if(key == 'q')
  {
    catY = catY+30;
  }
  if(key == 'p')
  {
    snakeY = snakeY+30;
  }
}



void setup()
{
  size (460, 650);
  noLoop();
} 
 int numDots;
 int diceTotal;
 int numWins = 0;
 int numLosses = 0;

 
 class Die
{
  int DieX, DieY;
  Die (int x, int y)
  {
    DieX = x;
    DieY = y;
    roll();
  }
 
  void roll ()
  {
    if ((Math.random() * 7) < 1)
      numDots = 1;
    else if ((Math.random() * 7) < 2)
      numDots = 2;
    else if ((Math.random() * 7) < 3)
      numDots = 3;
    else if ((Math.random() * 7) < 4)
      numDots = 4;
    else if ((Math.random() * 7) < 5)
      numDots = 5;
    else
      numDots = 6;
  }
 
  void show ()
  {
    fill(242, 242, 186);
    rect (DieX, DieY, 40, 40, 10);
    fill (0);
    if (numDots ==1)
    {
      ellipse (DieX+20, DieY+20, 10, 10);
      //System.out.println (numDots);
    } else if (numDots ==2)
    {
      ellipse (DieX+10, DieY+10, 10, 10);
      ellipse (DieX+30, DieY+30, 10, 10);
    } else if (numDots ==3)
    {
      ellipse (DieX+10, DieY+10, 10, 10);
      ellipse (DieX +20, DieY+20, 10, 10);
      ellipse (DieX+30, DieY+30, 10, 10);
    } else if (numDots ==4)
    {
      ellipse (DieX+10, DieY+10, 10, 10);
      ellipse (DieX+30, DieY+10, 10, 10);
      ellipse (DieX+30, DieY+30, 10, 10);
      ellipse (DieX+10, DieY+30, 10, 10);
    } else if (numDots ==5)
    {
      ellipse (DieX+10, DieY+10, 10, 10);
      ellipse (DieX+30, DieY+10, 10, 10);
      ellipse (DieX+20, DieY+20, 10, 10);
      ellipse (DieX+30, DieY+30, 10, 10);
      ellipse (DieX+10, DieY+30, 10, 10);
    } else if (numDots ==6)
    {
      ellipse (DieX+10, DieY+7, 10, 10);
      ellipse (DieX+10, DieY +20, 10, 10);
      ellipse (DieX+10, DieY+33, 10, 10);
      ellipse (DieX+30, DieY+7, 10, 10);
      ellipse (DieX+30, DieY+20, 10, 10);
      ellipse (DieX+30, DieY+33, 10, 10);
    }
  }
}

void draw()
{
  background (0);
  for (int y = 120; y <475; y = y+50)
  {
    for (int x = 35; x< 400; x = x+50)
    {
      Die r1c1 = new Die (x,y);
      r1c1.show();
        if (numDots ==1){
          diceTotal ++;
        }
        else if (numDots ==2){
          diceTotal =diceTotal +2;
        }
        else if (numDots ==3){
          diceTotal = diceTotal+3;
        }
        else if (numDots ==4){
          diceTotal = diceTotal+4;
        }
        else if (numDots ==5){
          diceTotal = diceTotal+5;
        }
        else if (numDots ==6){
          diceTotal = diceTotal+6;
        }
    }
  }

  if (diceTotal > 200){
    textSize (80);
    fill (250,56,18);
    text ("You Win!", 50,310);
    numWins = numWins +1;
  }
  else if (diceTotal < 201){
    textSize (80);
    fill (250,56,18);
    text ("You Lose!", 50,310);
    text ("Try Again", 50,400);
    numLosses = numLosses +1;
  }
  fill (17,144,41);
  rect (60,10,340,50);
  fill (255);
  textSize(40);
  text ("Click To Roll", 100,50);
  fill (17,26,173);
  rect (10,70, 440, 40);
  fill (255);
  textSize (30);
  text ("Roll above 200 to win!", 80, 100);
  fill (255,0,0);
  rect (50, 520, 360, 60);
  fill (255);
  textSize (50);
  text ("Score:", 80,565);
  text (diceTotal, 250,566);
  fill (250,230,40);
  rect (25,590,410,50);
  fill (0);
  textSize (40);
  text ("Wins:", 40, 630);
  text (numWins, 150,631);
  text ("Losses:", 210,630);
  text (numLosses, 350,631);
}
 

 
 
 
 
void mouseClicked()
{
    redraw();
    diceTotal = 0;
       
}
int quant = 8;
int clicks = 0;

float [] x;
float [] y;

float tempx;
float tempy;


void setup()
{
  size(800,800);
  background(255);
  stroke(0);
  
  x = new float [quant];
  y = new float [quant];
}
void draw()
{
  if(clicks == quant)
  {
    background(255);
    write();
    delay(100);
    if(keyPressed)
    {
      if(key == BACKSPACE)
      {
        background(255);
        clicks = 0;
      }
    }
  }
  else
  {
  }
}
void mouseClicked()
{
  if(clicks<8)
  {
    x[clicks] = mouseX;
    y[clicks] = mouseY;
    strokeWeight(10);
    point(x[clicks],y[clicks]);
    clicks++;
    print(clicks);
  }
  else
  {
  }
}
void write()
{
  for (int i = 0;i<quant;i++)
  {
    strokeWeight(10);
    point(x[i],y[i]);
  }
  
  strokeWeight(4);
  
  for (int i = 0;i<quant-1;i++)
  {
    line(x[i],y[i],x[i+1],y[i+1]);
  }
  line(x[7],y[7],x[0],y[0]);
  
  mids();
}
void mids()
{
  tempx = x[0];
  tempy = y[0];
  for (int i = 0;i<quant-1;i++)
  {
    x[i] = (x[i]+x[i+1])/2;
    y[i] = (y[i]+y[i+1])/2;
  }
  x[7] = (x[7]+tempx)/2;
  y[7] = (y[7]+tempy)/2;
}

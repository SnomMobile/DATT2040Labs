int size = 8;
//x&y click take mouse data
int xclick;
int yclick;

void setup()
{
  background(0);
  stroke(255);
  size(800,800);
  //draw grid function
  for(int i=1;i<size;i++)
  {
    line(0+((width/size)*i),0,0+((width/size)*i),height);
  }
  for(int j=1;j<size;j++)
  {
    line(0,0+((height/size)*j),height,0+((height/size)*j));
  }
}
void draw()
{
  //right click deletes square
  //1 colours it red
  //2 colours it green
  //3 colours it blue
  //backspace clears all
  if(mousePressed&&(mouseButton==RIGHT))
  {
    fill(0);
    stroke(255);
  }
  if(keyPressed)
  {
    if(key == '0')
    {
      fill(255);
      stroke(255);
    }
    if(key == '1')
    {
      fill(255,0,0);
      stroke(255,0,0);
    }
    if(key == '2')
    {
      fill(0,255,0);
      stroke(0,255,0);
    }
    if(key == '3')
    {
      fill(0,0,255);
      stroke(0,0,255);
    }
    if(key == BACKSPACE)
    {
      background(0);
      stroke(255);
      for(int i=1;i<size;i++)
      {
        line(0+((width/size)*i),0,0+((width/size)*i),height);
      }
      for(int j=1;j<size;j++)
      {
        line(0,0+((height/size)*j),height,0+((height/size)*j));
      }
    }
  }
}

void mouseClicked()
{
  //divide by width/size & height/size to find row/column of grid
  xclick = mouseX/(width/size);
  yclick = mouseY/(height/size);
  
  //multiply by 100 to find top left corner of box clicked
  xclick*=100;
  yclick*=100;
  
  //fill in rectangle
  rect(xclick,yclick,width/size,height/size);
  
  println(xclick+","+yclick);
}

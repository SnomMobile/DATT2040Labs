PVector main;
PVector alter;

color rgb;
void setup()
{
  rgb = 255;
  size(800,800);
  background(0);
  main = new PVector(0,0,0);
  main.normalize();
}
void draw()
{
  if(keyPressed)
  {
    if(key==BACKSPACE)
    {
      background(0);
    }
  }
  alter = new PVector(mouseX,mouseY,10);
  main.add(alter);
  fill(rgb,3);  
  ellipse(width/2,height/2,main.x,main.y);
  
  main = new PVector(0,0,0);
}
void mouseClicked()
{
  rgb = color(random(256),random(256),random(256));
}

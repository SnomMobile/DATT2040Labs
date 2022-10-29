// code yoinked, understood and slightly altered from https://processing.org/examples/tree.html

float theta;
void setup()
{
  size(800,900);
}
void draw()
{
  background(255);
  stroke(0);
  float a = (mouseY / (float) width) * 90f;
  theta = radians(a);
  translate(width/2,height);
  line(0,0,0,-120);
  translate(0,-120);
  branch(200);
}
void branch(float h)
{
  h *= 0.66;
  if(h>0.5)
  {
    stroke(int(random(256+1)),int(random(256+1)),int(random(256+1)));
    pushMatrix();
    rotate(theta);
    line(0,0,0,-5);
    translate(0,-h);
    branch(h);
    popMatrix();
    
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}

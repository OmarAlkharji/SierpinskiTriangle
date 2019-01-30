public void setup()
{
 int myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
size(500,500);
background(myColor);
}
public void draw()
{
  
  sierpinski(50,435,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
 fill(0,0,0);
  triangle(x,y,x+len,y,x+len/2,y-len);
}
  else{
  
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);
  }
}

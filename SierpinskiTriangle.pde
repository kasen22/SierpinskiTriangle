public void setup()
{
  size(500,500);
  background (0);
}
public void draw()
{
 int myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 fill(myColor);
 sierpinski(150,350,200);
}
public void sierpinski(int x, int y, int len) 
{
 if(len <= 40){
   triangle(x, y, x+len/2, y-len, x+len, y);
 }else{
   sierpinski(x,y,len/2);
   sierpinski(x+len/4, y-len/2,len/2);
   sierpinski(x+len/2, y, len/2); 
 } 
}

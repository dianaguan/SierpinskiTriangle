public void setup()
{
   size(800,800);

}
public void draw()
{
   fill(255,0,0);
   sierpinski(100,700,600);
}
public void mouseDragged()//optional
{
   
}
public void sierpinski(int x, int y, int len) 
{
	int rColor = (int) (Math.random() * 255);
	int gColor = (int) (Math.random() * 255);
	int bColor = (int) (Math.random() * 255);
	
	
 	if(len>=20){
 		sierpinski(x,y,len/2);
 		sierpinski(x+len/2,y,len/2);
 		sierpinski(x+len/4,y-len/2,len/2);
 		}
 		
 	else{
		fill(rColor,gColor,bColor);
 		triangle(x,y,x+len/2,y-len,x+len,y);
 	}
}

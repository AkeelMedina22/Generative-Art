
float l = 1.455, a = -1, b = 0.03, g = -0.8, o = 0;
int d = 3;
float zzbar=0, zimag=0, zreal=0, zn=0, p=0;
int iterations = 2000000;
float za=0, zb=0;
void setup()
{
  size(600, 600);
  float xn = 0.01, yn = 0.01;
  float xn1 = 0, yn1 = 0;
  float hue = random(0,255);
  
  background(255);
  colorMode(HSB);
  translate(width/2, height/2);

  for (int k = 1; k < iterations; k++)
  {
     zzbar = pow(xn, 2) + pow(yn, 2);
     p = a * zzbar + l;
     zreal = xn;
     zimag = yn;
     
     for (int i = 0; i < d-2; i++)
     {
         za = zreal*xn - zimag*yn;
         zb = zimag*xn + zreal*yn;
         zreal = za;
         zimag = zb;
     }
     zn = xn * zreal - yn*zimag; 
     p = p+b*zn;
     xn1 = p * xn + g*zreal - o*yn;
     yn1 = p * yn - g*zimag + o*xn;
     xn = xn1;
     yn = yn1;
     xn1 = xn1 * 200;
     yn1 = yn1 * 200;

     hue += 0.00005;
     if (hue > 255)
     {
       hue = 0;
     }
     stroke(hue, 255, 255, 8);
     point(xn1, yn1);
   }
   save("symmetricIcon.jpg");
}

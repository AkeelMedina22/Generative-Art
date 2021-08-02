// Image Version (High Quality)

float a = 0.745, b = 0.765, c = 2.880, d = -0.967;
int iterations = 1000000;

void setup()
{
  size(600, 600);
  float xn = 0.1, yn = 0.1;
  float xn1 = 0, yn1 = 0;
  float hue = 200;
  background(0);
  colorMode(HSB);
  translate(width/2, height/2);
 
  for (int k = 0; k < iterations; k++)
  {
     xn1 = sin(c*yn) + b*sin(c*xn);
     yn1 = sin(d*xn) + a*sin(d*yn);
     xn = xn1;
     yn = yn1;
     xn1 = xn1 * 150;
     yn1 = yn1 * 150;
     
     hue += 0.0001;
     if (hue > 255)
     {
       hue = 0;
     }
     stroke(hue, 255, 255, 8);
     point(xn1, yn1);
   }
   //save("idk.jpg");
}

// Animated Version (Less Iterations). Press 'r' to record.

float a = 0.745, b = 0.765, c = 2.880, d = -0.967;
int iterations = 10000;
float xn = 0.1, yn = 0.1;
float xn1 = 0, yn1 = 0;
float hue = 140;
boolean recording = false;

void setup()
{
   size(600, 600);
   colorMode(HSB);
}

void draw()
{
  background(0);
  translate(width/2, height/2);
 
  for (int k = 0; k < iterations; k++)
  {
     xn1 = sin(c*yn) + b*sin(c*xn);
     yn1 = sin(d*xn) + a*sin(d*yn);
     xn = xn1;
     yn = yn1;
     xn1 = xn1 * 150;
     yn1 = yn1 * 150;
     
     b += 0.000001;
     if (b > 3)
     {
       b = -3;
     }
     hue += 0.0001;
     if (hue > 255)
     {
       hue = 0;
     }
     
     stroke(hue, 255, 255, 150);
     point(xn1, yn1);
   }  
   if (recording)
   {
     saveFrame("output/fractaldream_####.png");
   }
}

void keyPressed()
{
   if (key == 'r' || key == 'R')
   {
     recording = !recording;
   }
}

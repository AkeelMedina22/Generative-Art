void setup()
{
   size(400, 400);
   background(0);
   translate(width/2, height/2);
   int n = 6;
   int d = 71;
   float x = 0;
   float y = 0;
   
   for (int i = 0; i < 361; i++)
   {
       strokeWeight(1);
       stroke(255, 100);
       float angle = i*d*PI/180;
       float r = sin(n*angle) * 200;
       float x_new = r * cos(angle);
       float y_new = r * sin(angle);
       line(x, y, x_new, y_new);
       x = x_new;
       y = y_new;
   }
}

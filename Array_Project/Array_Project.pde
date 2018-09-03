
//Variable for Sky
PImage Sky;
//X Value for Sky
float SkyX=0;
//Y Value for Sky
float SkyY=0;
//Variable for Plane
PImage Plane;
//X Value for Plane
float PlaneX=0;
//Y Value for Plane
float PlaneY=0;
//Diver Img
PImage Diver;
//Array
float [] DiverX=new float [4];
float [] DiverY=new float [4];
//Grass Img
PImage Grass;
int DiverNo=0;

void setup()
{
  size(800, 800);
  //To retrieve the image from the folder
  Plane = loadImage("flight.png");
  Plane.resize(600, 400);
  Sky = loadImage("sky.png");
  Diver= loadImage("skydiving.png");
  Diver.resize(110, 110);
  Sky.resize(800, 800);
  Grass=loadImage("grass.jpg");
  Grass.resize(0, 600);

  for (int i=0; i<4; i++)
  {
    DiverX[i]=random(300, 500);
    DiverY[i]=300;
  }
}

void draw()
{
  //To draw the image onto the screen

  image(Grass, 0, 300);
  image(Sky, SkyX, SkyY);
  image(Plane, PlaneX, PlaneY);
  PlaneX=PlaneX+1;
  if (PlaneX>width)
  {
    PlaneX=-800;
  }
  if (PlaneX>100)
  {
    DiverNo=1;
  }
  for (int i=0; i<DiverNo; i++)
  {
    image(Diver, DiverX[i], DiverY[i]);

    DiverY[i]=DiverY[i]+1;
  }
   if (PlaneX>200)
  {
    DiverNo=2;
  }
  for (int i=0; i<DiverNo; i++)
  {
    image(Diver, DiverX[i], DiverY[i]);

    DiverY[i]=DiverY[i]+1;
  }
   if (PlaneX>225)
  {
    DiverNo=3;
  }
  for (int i=0; i<DiverNo; i++)
  {
    image(Diver, DiverX[i], DiverY[i]);

    DiverY[i]=DiverY[i]+1;
  }
    if (PlaneX>270)
  {
    DiverNo=4;
  }
  for (int i=0; i<DiverNo; i++)
  {
    image(Diver, DiverX[i], DiverY[i]);

    DiverY[i]=DiverY[i]+1;
  }
}
 

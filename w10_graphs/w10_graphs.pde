
//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
}//setup
 // cy = amp * cos( radians(cx) ) + height/2;
void draw() {
  //background(0);
  //sin curve
  drawSinCurve(angle, sinAmplitude, sinAmplitude);
  //circle
  drawCircle(angle, circRadius, width/2, sinAmplitude*2 + circRadius);
  //concentric circles
  drawCircle(angle, spiralRadius, width/2, sinAmplitude*2 + circRadius*3);

  angle++;
}//draw

void drawSinCurve(int degrees, int amplitude, int yOffset) {
  float sy = amplitude * sin( radians(degrees) ) + yOffset;
  if (angle < width) {
    circle(angle,sy,dotDiameter);
  }
  if (angle >= width){
    int x;
    x++;
    if (x%2==1) {
      

  }
  
}
void drawCircle(int degrees, int radius, int xOffset, int yOffset) {}

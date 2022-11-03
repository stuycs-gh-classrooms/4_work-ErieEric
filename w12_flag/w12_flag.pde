//Rifah, Eric, Rifah
int a, b,shift;
float angle;
void setup(){
 size(500,500);
 background(245,30,98);
 a = 30;
 b = 4; 
 angle = 0.0;
 frameRate(10);
 line(width/2,height/3,width/2,height);

}

void draw(){
  //println(x,y);
   background(245,30,98);
   stroke(0,255,0);
  line(width/2,height/3,width/2,height);
   makeRoseCurve(a, b,angle, shift);
   shift+=1;
}


float roseCurvesValue(float degree, int a, int b){
  float r = 5*a*sin(b*radians(degree));  
  return r;
}

void makeRoseCurve(int a, int b, float degree,int t){
  while(degree <  360){
   float x = width/2+roseCurvesValue(degree,a,b)*cos(radians(degree)+t);
  float y = height/3+roseCurvesValue(degree,a,b)*sin(radians(degree)+t);
  stroke(((degree%360)/360)*255,((degree%360)/360)*255,255);
  circle(x,y,1);
  degree += 0.1;
 }
}

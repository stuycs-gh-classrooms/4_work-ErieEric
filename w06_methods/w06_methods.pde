void triangleeye( int x, int y){
size(400,400);
fill(210,210,10);
triangle(28, x+100, y, 0, 372, 300);
fill(#FFFFFF);
ellipse(x, y-50, 165, 75);
fill(1,1,1);
ellipse(x, y-50, 50, 50);
}
void setup() {
 size(400, 400);
 background(0);
 triangleeye(200, 200);

  }

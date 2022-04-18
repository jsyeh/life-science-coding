//https://youtu.be/va7KEVzrhys?t=497 海洋大學 廖柏凱老師 黃金角
//https://en.wikipedia.org/wiki/Golden_angle
//137.5077640500378546463487 degrees
//2.39996322972865332 radians
//Fibonacci angle
//https://gofiguremath.org/natures-favorite-math/the-golden-ratio/the-golden-angle/
float golden_angle=2.39996322972865332f;//in radians
float angle=0, angle2=golden_angle;
void setup(){
  size(500,500);
  noStroke();
  colorMode(HSB);
}
void draw(){
  background(255);
  float ballR=3, angle=0;
  float H=255/3;
  translate(width/2,height/2);
  for(int i=0; i<mouseX*2.5; i++){
    pushMatrix();
      rotate(angle);
      fill(H,255,255);
      ellipse(i/5f, 0, ballR, ballR);
    popMatrix();
    angle+=angle2;
    ballR*=1.001;
    H = (H + 0.2)%256;
  }
}

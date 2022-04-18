# life-science-coding
找尋生命科學裡的程式設計, 將海洋大學廖柏凱老師的程式寫出來

銘傳大學葉正聖

寫作動機: 因為吳賦哲老師提到, 需要寫一些範例來示範, 所以就把海洋大學廖柏凱老師的程式概念, 照著投影片裡的介紹, 重新寫出來。

https://www.youtube.com/playlist?list=PLhfafhvnZV2DMRqrvxyFt70l_hPHfs_GT

## 黃金角 golden_angle

![golden_angle](golden_angle/golden_angle.png)

```processing
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
```




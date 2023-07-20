import processing.video.*;

Capture video;
int n = 0;
int kierunek = 1;
int oczyX;
int oczyY;

void setup() {
  size(800, 920);
  video = new Capture(this, 500, 500, 30);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(255, n*0.75 , 153 + second() % 255);
  if(mouseY >= 155){
    oczyY = 155;
  } else if(mouseY <= 145){
    oczyY = 145;
  }else{
    oczyY = mouseY;
  };
  
  if(mouseX >= 415){
    oczyX = 430;
  } else if(mouseX <= 405){
    oczyX = 420;
  }else{
    oczyX = mouseX + 15;
  };
  
  fill(224, 133, 194);
  stroke(204, 0, 102);
  
  ellipse(400, 250, 350, 200);
  
  fill(255, 230, 230);
  triangle(325, 150, 475, 150, 400, 300);
  
  n = n + 1*kierunek;
  if(n == (-1) || n == 256)
    kierunek = kierunek * (-1);
  tint(666, 0, 255);
  image(video, 150, 250, 500, 500);
  

  int x = 225;
  int y = -50;
  
  fill(255, 230, 230);
  ellipse(175 + x , 190 + y, 250, 120);
  //arc(x, y, width, height, start, stop);
  arc(100 + x, 150 + y, 50, 120, -PI-0.25, 0); //ucho
  arc(250 + x, 150 + y, 50, 120, -PI, 0.25);  //ucho
  
  //lewe wasy
  line(20 + x, 160 + y, 75 + x, 180 + y);
  line(20 + x, 190 + y, 75 + x, 190 + y);
  line(20 + x, 220 + y, 75 + x, 200 + y);
  
  //prawe wasy
  line(270 + x, 180 + y, 325 + x, 160 + y);
  line(270 + x, 190 + y, 325 + x, 190 + y);
  line(270 + x, 200 + y, 325 + x, 220 + y);
  
  line(385, 150, 410, 150);
  line(345, 170, 450, 170);
  line(345, 170, 345, 160);
  line(450, 170, 450, 160);
  
  rect(225, 250, 65, 100);
  arc(236, 350, 22, 50, 0, PI);
  arc(258, 350, 22, 50, 0, PI);
  arc(280, 350, 21, 50, 0, PI);
  
  ellipse(500, 250, 190, 80);
  arc(475, 215, 20, 70, -PI, 0); 
  
  fill(204, 0, 102);
  
  circle(oczyX + 10, oczyY, 5);
  circle(oczyX - 60, oczyY, 5);
  
  textSize(58);
  fill(242, 166, 223);
  text("kici, kici, miau, miau~", 140, 860);
  fill(255, 201, 228);
  text("kici, kici, miau, miau~", 160, 840);
}

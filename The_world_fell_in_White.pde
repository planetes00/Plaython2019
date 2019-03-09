objects g1= new objects(100, 100, 100);
story s1= new story(0);
PFont intro;

int k=width/2;
int j=height/2;
int []x={0, width/2, 200, 600, 343, 0};
int []y={200, 400, 200, 400, 343, 600};
int speedH=10;
int []speedI={5, 5, 5, 5, 5, 5};
int []speedJ={5, 5, 5, 5, 5, 5};
int clear1=5;

void setup() {
  intro=createFont("Futura", 100);
  size(800, 600);
  textFont(intro, 100);
}

void draw() {
  textAlign(CENTER, CENTER);

  if (s1.nowNumber==0) s1.tutorial();
  else if (s1.nowNumber==1) s1.stage1();
  else if (s1.nowNumber==2) s1.stage2();
  else if (s1.nowNumber==3) s1.stage3();
  else if (s1.nowNumber==4) s1.stage4();
  else if (s1.nowNumber==5) s1.stage5();
  else if (s1.nowNumber==6) s1.stage6();
  else if (s1.nowNumber==7) s1.stage7();
  else if (s1.nowNumber==8) s1.stage8();
  else if (s1.nowNumber==9) s1.stage9();
  else if (s1.nowNumber==10) s1.clears();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      j-=speedH;
    } else if (keyCode == DOWN) {
      j+=speedH;
    } else if (keyCode==RIGHT) {
      k+=speedH;
    } else if (keyCode==LEFT) {
      k-=speedH;
    }
  }
}

class story {
  int nowNumber;
  int changeStage=0;
  story(int _n) {
    nowNumber=_n;
  }
  void tutorial() {

    g1.changeColor(200, 150, 256);
    g1.printColorCyan();
    g1.mother(x[0], y[0]);
    g1.father(width-x[0], height-y[0]);
    controlSpeedX(0, 0);
    fill(#ffffff, 70);
    text("Use arrow keys \n to move ◆ to ●", width/2, 3*height/4-30);
    g1.hero(k, j, 5);
    g1.friend(width/2, height-30, 20);
    if (changeStage==1) {
      nowNumber=1;
      changeStage=0;
      stroke(250);
      fill(250);
      rect(0, 0, 800, 600);
    }
  }
  void stage1() {
    g1.changeColor(189, 234, 212);
    g1.printColorPink();
    g1.mother(x[0], y[0]);
    g1.mother(x[0]+120, y[0]);
    g1.mother(width-x[0], height-y[0]);
    g1.mother(width-x[0]+120, height-y[0]);
    controlSpeedX(0, 0);
    g1.hero(k, j, 5);
    g1.friend(width/2, 30, 20);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    if (changeStage==1) {
      nowNumber=2;
      changeStage=0;
    }
  }
  void stage2() {
    g1.changeColor(237, 170, 139);
    g1.printColorYellow();
    g1.father(width-x[1], height-y[1]);
    g1.father(width-x[0], height-y[0]);
    g1.father(x[2], y[2]);
    controlSpeedX(0, 0);
    controlSpeedX(1, 1);
    controlSpeedX(2, 4);
    g1.hero(k, j, 5);
    g1.friend(30, height/2, 20);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    if (changeStage==1) {
      nowNumber=3;
      changeStage=0;
    }
  }
  void stage3() {
    g1.changeColor(130, 170, 139);
    g1.printColorPink();
    g1.father(width-x[1], height-y[1]);
    g1.father(width-x[0], height-y[0]);
    g1.mother(x[2], y[2]);
    g1.mother(x[3], y[3]);
    controlSpeedX(0, 0);
    controlSpeedX(1, 1);
    controlSpeedY(2, 2);
    controlSpeedY(3, 3);
    g1.hero(k, j, 5);
    g1.friend(width-30, 30, 20);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    if (changeStage==1) {
      nowNumber=4;
      changeStage=0;
    }
  }
  void stage4() {
    g1.changeColor(80, 195, 234);
    g1.printColorYellow();
    g1.mother(x[4], -3*x[4]/4+600);
    g1.father(x[2], 3*x[2]/4);
    controlSpeedX(2, 2);
    controlSpeedX(4, 3);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    g1.hero(k, j, 5);
    g1.friend(30, height/2, 20);
    //

    if (changeStage==1) {
      nowNumber=5;
      changeStage=0;
    }
  }
  void stage5() {
    g1.changeColor(230, 100, 130);
    g1.printColorYellow();
    g1.father(width-x[1], height-y[1]);
    g1.mother(x[3], y[3]);
    g1.father(x[2], 3*x[2]/4);
    controlSpeedX(2, 2);
    controlSpeedY(1, 1);
    controlSpeedY(3, 3);
    g1.hero(k, j, 5);
    g1.friend(width-30, height/2, 20);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    if (changeStage==1) {
      nowNumber=6;
      changeStage=0;
    }
  }
  void stage6() {
    g1.changeColor(144, 242, 200);
    g1.printColorCyan();
    g1.mother(x[4], -3*x[4]/4+600);
    g1.father(x[2], 3*x[2]/4);
    controlSpeedX(2, 2);
    controlSpeedX(4, 3);
    g1.hero(k, j, 5);
    g1.friend(30, height-30, 20);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    if (changeStage==1) {
      nowNumber=7;
      changeStage=0;
    }
  }

  void stage7() {
    g1.changeColor(234, 141, 193);
    g1.printColorYellow();
    g1.father(width-x[1], height-y[1]);
    g1.mother(x[3], y[3]);
    g1.father(x[2], 3*x[2]/4);
    g1.mother(x[4], -3*x[4]/4+600);
    controlSpeedX(2, 2);
    controlSpeedY(1, 1);
    controlSpeedY(3, 3);
    controlSpeedX(4, 4);
    g1.hero(k, j, 5);
    g1.friend(width-30, 30, 20);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    if (changeStage==1) {
      nowNumber=8;
      changeStage=0;
    }
  }

  void stage8() {
    g1.changeColor(144, 242, 200);
    g1.printColorPink();
    g1.mother(x[4], -3*x[4]/4+600);
    g1.father(x[5], 3*x[5]/4);
    g1.father(width-x[1], height-y[1]);
    g1.father(width-x[0], height-y[0]);
    g1.mother(x[2], y[2]);
    g1.mother(x[3], y[3]);
    controlSpeedX(0, 0);
    controlSpeedX(1, 1);
    controlSpeedY(2, 2);
    controlSpeedY(3, 3);
    controlSpeedX(5, 5);
    controlSpeedX(4, 4);
    g1.hero(k, j, 5);
    g1.friend(30, height-30, 20);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    if (changeStage==1) {
      nowNumber=7;
      changeStage=0;
    }
  }

  void stage9() {
    g1.changeColor(227, 110, 135);
    g1.printColorYellow();
    g1.mother(x[4], -3*x[4]/4+600);
    g1.father(x[5], 3*x[5]/4);
    g1.father(width-x[1], height-y[1]);
    g1.father(width-x[0], height-y[0]);
    g1.mother(x[2], y[2]);
    g1.mother(x[3], y[3]);
    controlSpeedX(0, 0);
    controlSpeedX(1, 1);
    controlSpeedX(5, 5);
    controlSpeedY(3, 3);
    controlSpeedX(2, 2);
    controlSpeedX(4, 4);
    g1.hero(k, j, 5);
    g1.friend(width/2, height/2, 20);
    fill(256, 256, 256, 51);
    text(nowNumber, 6*width/7, height/2-50);
    if (changeStage==1) {
      nowNumber=10;
      changeStage=0;
    }
  }
  void clears() {
    g1.changeColor(227, 110, 135);
    g1.printColorYellow();
    g1.hero(k, j, clear1);
    clear1+=15;
    stroke(250);
    fill(250);
    rect(0, 0, 800, 600);
    fill(227, 110, 133, 51);
    text("clear", width/2, height/2);
    if (speedJ[1]>1000) {
      noLoop();
    }
  }
}

class objects {
  int []color1=new int[3];
  float rChange, gChange, bChange;

  objects(int r1, int g1, int b1) {
    color1[0]=r1;
    color1[1]=g1;
    color1[2]=b1;
  }

  void changeColor(int r1, int g1, int b1) {
    color1[0]=r1;
    color1[1]=g1;
    color1[2]=b1;
  }

  void printColorCyan() {
    for (int i=0; i<=width/5; i++) {
      stroke(color1[0]-i/10, color1[1]+i/10, color1[2]+i/10);
      strokeWeight(5);
      line(i*5, 0, i*5, height);
    }
  }
  void printColorYellow() {
    for (int i=0; i<=width/5; i++) {
      stroke(color1[0]+i/10, color1[1]+i/10, color1[2]-i/10);
      strokeWeight(5);
      line(i*5, 0, i*5, height);
    }
    /*for (int i=0; i<170; i++) {
     stroke(255, 255-i);
     strokeWeight(1);
     line(width, height-i, 0, height-i);
     }*/
  }
  void printColorPink() {
    for (int i=0; i<=width/5; i++) {
      stroke(color1[0]+i/10, color1[1]-i/10, color1[2]-i/10);
      strokeWeight(5);
      line(i*5, 0, i*5, height);
    }
  }

  void diedhero(int w, int h, int tall) {
    strokeWeight(1);
    stroke(#ff0000);
    fill(#ff0000);
    quad(w+tall, h, w, h+tall, w-tall, h, w, h-tall);
    noLoop();
  }

  void hero(int w, int h, int tall) {
    strokeWeight(1);
    stroke(250);
    noFill();
    ellipse(w, h, tall*2+20, tall*2+20);
    noStroke();
    fill(230);
    quad(w+tall, h, w, h+tall, w-tall, h, w, h-tall);
  }

  void mother(int w, int h) {
    strokeWeight(1);
    stroke(70);
    fill(70);
    triangle(w, h+20, w+30/sqrt(3), h-10, w-30/sqrt(3), h-10);
    if ((k+5)>(w-10)&&(k-5)<(w+10)&&(j+5)>(h-10)&&(j-5)<(h+10)) {
      diedhero(k, j, 20);
    }
  }

  void father(int w, int h) {
    strokeWeight(1);
    stroke(100);
    fill(100);
    rect(w, h, 20, 20);
    if ((k+5)>w&&(k-5)<(w+20)&&(j+5)>h&&(j-5)<(h+20)) {
      diedhero(k, j, 20);
    }
  }

  void friend(int w, int h, int tall) {
    strokeWeight(1);
    stroke(230);
    fill(230);
    ellipse(w, h, tall, tall);
    if (k>(w-tall/2)&&k<(w+tall/2)&&j>(h-tall/2)&&j<(h+tall/2)) s1.changeStage=1;
  }
}
class textLine {
  int i;
}

void controlSpeedX(int i, int i1) {
  x[i]+=speedI[i1];
  if (x[i]>width) speedI[i1]=-speedI[i1];
  if (x[i]<0) speedI[i1]=-speedI[i1];
}

void controlSpeedY(int i, int i1) {
  y[i]+=speedJ[i1];
  if (y[i]>height) speedJ[i1]=-speedJ[i1];
  if (y[i]<0) speedJ[i1]=-speedJ[i1];
}

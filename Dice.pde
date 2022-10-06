int dSum;
Die a;

void setup() {
  size(500,500);
  noLoop();
}

void draw() {
  fill(0);
  rect(0,0,500,500);
  for(int y = 17; y < 470; y += 48) {
    for(int x = 17; x < 470; x += 48) {
      Die a = new Die(x,y);
      a.show();
    }
  }
  fill(0, 0, 0, 200);
  rect(180, 180, 140, 150);
  fill(255);
  textSize(50);
  text("Total:\n " + dSum, 190, 240);
}
  
void mousePressed() {
  dSum = 0;
  redraw();
}

class Die {
  int posX, posY, dSize, rRoll;    
  Die(int x, int y) { 
    dSize = 35;
    posX = x;
    posY = y;
  }
  
  void roll() {
    rRoll = (int)(Math.random()*6) + 1;
  }
      
  void show() {
    noStroke();
    fill((int)(Math.random()*200) + 50, (int)(Math.random()*200) + 50, (int)(Math.random()*200) + 50);
    rect(posX, posY, dSize, dSize);
    fill(255);
    roll();
    if(rRoll == 1) {
      ellipse(posX + 17, posY + 17, 7, 7);
      dSum = dSum + 1;
    } else if(rRoll == 2) {
        ellipse(posX + 10, posY + 10, 7, 7);
        ellipse(posX + 24, posY + 24, 7, 7);
        dSum = dSum + 2;
    } else if(rRoll == 3) {
        ellipse(posX + 10, posY + 10, 7, 7);
        ellipse(posX + 18, posY + 18, 7, 7);
        ellipse(posX + 26, posY + 26, 7, 7);
        dSum = dSum + 3;
    } else if(rRoll == 4) {
        ellipse(posX + 10, posY + 10, 7, 7);
        ellipse(posX + 24, posY + 10, 7, 7);
        ellipse(posX + 10, posY + 25, 7, 7);
        ellipse(posX + 24, posY + 25, 7, 7);
        dSum = dSum + 4;
    } else if(rRoll == 5) {
       ellipse(posX + 10, posY + 10, 7, 7);
       ellipse(posX + 24, posY + 10, 7, 7);
       ellipse(posX + 10, posY + 25, 7, 7);
       ellipse(posX + 24, posY + 25, 7, 7);
       ellipse(posX + 17, posY + 17.5, 7, 7);
       dSum = dSum + 5;
    } else {
       ellipse(posX + 10, posY + 10, 7, 7);
       ellipse(posX + 24, posY + 10, 7, 7);
       ellipse(posX + 10, posY + 25, 7, 7);
       ellipse(posX + 24, posY + 25, 7, 7);
       ellipse(posX + 10, posY + 17.5, 7, 7);
       ellipse(posX + 24, posY + 17.5, 7, 7);
       dSum = dSum + 6;
    }
    
  }
}


float strokeWeight_keys = 2;

float whiteKeyHeight = 200;
float whiteKeyWidth = 50;

float blackKeyHeight = 120;
float blackKeyWidth = whiteKeyWidth/2;
String[] whiteKeyLabels= {"C1", "D1", "E1", "F1", "G1", "A1", "B1", 
  "C2", "D2", "E2", "F2", "G2", "A2", "B2", 
  "C3", "D3", "E3", "F3", "G3"};

void drawKeys() {
  stroke(1);
  // white keys = 19
  fill(#FFFFFF);
  for (int i = 0; i < 19; i++) {
    fill(#FFFFFF);
    rect(5 + whiteKeyWidth * i, // x
      height-whiteKeyHeight-strokeWeight_keys*2, // y
      whiteKeyWidth, // largura
      whiteKeyHeight, // altura
      10); // arredondamento das bordasw

    fill(0);
    textFont(labelFont);
    text(whiteKeyLabels[i], 18+ whiteKeyWidth * i, 370);
  }

  // black keys = 13
  for (int i = 0; i < 18; i++) {
    if (i == 2 || i == 6 || i == 9 || i == 13 || i == 16) i++;
    for (int j = 0; j < 2; j++) {
      fill(0);
      strokeWeight(strokeWeight_keys);
      rect(5 + whiteKeyWidth-blackKeyWidth/2 + whiteKeyWidth * i, // x
        height-whiteKeyHeight-strokeWeight_keys*2, // y
        blackKeyWidth, // largura
        blackKeyHeight, // altura
        2); // arredondamento das bordas
    }
    for (int j = 0; j < 3; j++) {
      fill(0);
      rect(5 + whiteKeyWidth-blackKeyWidth/2 + whiteKeyWidth * i, // x
        height-whiteKeyHeight-strokeWeight_keys*2, // y
        blackKeyWidth, // largura
        blackKeyHeight, // altura
        2); // arasredondamento das bordas
    }
  }
}

void applyKeyForce(int x, int y) {
  for (int i = 0; i<num; i++) {
    particles[i].keyForce(x,y);
  }
}

void mousePressed() {
  if (mouseX > 5 && mouseX < 55 && mouseY > 318 && mouseY < 395 ||
    mouseX > 5 && mouseX < 41   && mouseY > 198 && mouseY < 318)
  {
    C1.play(); 
    applyKeyForce(30, 198);
  } else if (mouseX > 55 && mouseX < 105 && mouseY > 318 && mouseY < 395 ||
    mouseX > 68 && mouseX < 91         && mouseY > 198 && mouseY < 318)
    {D1.play();applyKeyForce(80, 198);}
  else if (mouseX > 105 && mouseX < 155 && mouseY > 318 && mouseY < 395 ||
    mouseX > 118 && mouseX < 155        && mouseY > 198 && mouseY < 318)
    {E1.play();applyKeyForce(130, 198);}
  else if (mouseX > 155 && mouseX < 205 && mouseY > 318 && mouseY < 395 ||
    mouseX > 156 && mouseX < 191        && mouseY > 198 && mouseY < 318)
    {F1.play();applyKeyForce(180, 198);}
  else if (mouseX > 205 && mouseX < 255 && mouseY > 318 && mouseY < 395 ||
    mouseX > 218 && mouseX < 241        && mouseY > 198 && mouseY < 318)
    {G1.play();applyKeyForce(230, 198);}
  else if (mouseX > 255 && mouseX < 305 && mouseY > 318 && mouseY < 395 ||
    mouseX > 268 && mouseX < 291        && mouseY > 198 && mouseY < 318)
    {A1.play();applyKeyForce(280, 198);}
  else if (mouseX > 305 && mouseX < 355 && mouseY > 318 && mouseY < 395 ||
    mouseX > 318 && mouseX < 354        && mouseY > 198 && mouseY < 318)
    {B1.play();applyKeyForce(330, 198);}

  else if (mouseX > 355 && mouseX < 405 && mouseY > 318 && mouseY < 395 ||
    mouseX > 355 && mouseX < 391        && mouseY > 198 && mouseY < 318)
    {C2.play();applyKeyForce(380, 198);}
  else if (mouseX > 405 && mouseX < 455 && mouseY > 318 && mouseY < 395 ||
    mouseX > 418 && mouseX < 441        && mouseY > 198 && mouseY < 318)
    {D2.play();applyKeyForce(430, 198);}
  else if (mouseX > 455 && mouseX < 505 && mouseY > 318 && mouseY < 395 ||
    mouseX > 468 && mouseX < 504        && mouseY > 198 && mouseY < 318)
    {E2.play();applyKeyForce(480, 198);}
  else if (mouseX > 505 && mouseX < 555 && mouseY > 318 && mouseY < 395 ||
    mouseX > 505 && mouseX < 341        && mouseY > 198 && mouseY < 318)
    {F2.play();applyKeyForce(530, 198);}
  else if (mouseX > 555 && mouseX < 605 && mouseY > 318 && mouseY < 395 ||
    mouseX > 568 && mouseX < 591        && mouseY > 198 && mouseY < 318)
    {G2.play();applyKeyForce(580, 198);}
  else if (mouseX > 605 && mouseX < 655 && mouseY > 318 && mouseY < 395 ||
    mouseX > 618 && mouseX < 641        && mouseY > 198 && mouseY < 318)
    {A2.play();applyKeyForce(630, 198);}
  else if (mouseX > 655 && mouseX < 705 && mouseY > 318 && mouseY < 395 ||
    mouseX > 668 && mouseX < 704        && mouseY > 198 && mouseY < 318)
    {B2.play();applyKeyForce(680, 198);}

  else if (mouseX > 705 && mouseX < 755 && mouseY > 318 && mouseY < 395 ||
    mouseX > 705 && mouseX < 741        && mouseY > 198 && mouseY < 318)
    {C3.play();applyKeyForce(730, 198);}
  else if (mouseX > 755 && mouseX < 805 && mouseY > 318 && mouseY < 395 ||
    mouseX > 768 && mouseX < 791        && mouseY > 198 && mouseY < 318)
    {D3.play();applyKeyForce(780, 198);}
  else if (mouseX > 805 && mouseX < 855 && mouseY > 318 && mouseY < 395 ||
    mouseX > 818 && mouseX < 854        && mouseY > 198 && mouseY < 318)
    {E3.play();applyKeyForce(830, 198);}
  else if (mouseX > 855 && mouseX < 905 && mouseY > 318 && mouseY < 395 ||
    mouseX > 855 && mouseX < 891        && mouseY > 198 && mouseY < 318)
    {F3.play();applyKeyForce(880, 198);}
  else if (mouseX > 905 && mouseX < 955 && mouseY > 318 && mouseY < 395 ||
    mouseX > 918 && mouseX < 953        && mouseY > 198 && mouseY < 318)
    {G3.play();applyKeyForce(930, 198);}

  // black keys
  else if (mouseX > 40 && mouseX < 69 && mouseY > 198 && mouseY < 318)
    Db1.play();
  else if (mouseX > 90 && mouseX < 119 && mouseY > 198 && mouseY < 318)
    Eb1.play();

  else if (mouseX > 190 && mouseX < 219 && mouseY > 198 && mouseY < 318)
    Gb1.play();
  else if (mouseX > 240 && mouseX < 269 && mouseY > 198 && mouseY < 318)
    Ab1.play();
  else if (mouseX > 290 && mouseX < 319 && mouseY > 198 && mouseY < 318)
    Bb1.play();

  else if (mouseX > 390 && mouseX < 419 && mouseY > 198 && mouseY < 318)
    Db2.play();
  else if (mouseX > 440 && mouseX < 469 && mouseY > 198 && mouseY < 318)
    Eb2.play();

  else if (mouseX > 540 && mouseX < 569 && mouseY > 198 && mouseY < 318)
    Gb2.play();
  else if (mouseX > 590 && mouseX < 619 && mouseY > 198 && mouseY < 318)
    Ab2.play();
  else if (mouseX > 640 && mouseX < 669 && mouseY > 198 && mouseY < 318)
    Bb2.play();

  else if (mouseX > 740 && mouseX < 769 && mouseY > 198 && mouseY < 318)
    Db3.play();
  else if (mouseX > 790 && mouseX < 818 && mouseY > 198 && mouseY < 318)
    Eb3.play();

  else if (mouseX > 890 && mouseX < 918 && mouseY > 198 && mouseY < 318)
    Gb3.play();
}  

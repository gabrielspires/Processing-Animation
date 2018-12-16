float strokeWeight_keys = 2;

float whiteKeyHeight = 200;
float whiteKeyWidth = 50;

float blackKeyHeight = 120;
float blackKeyWidth = whiteKeyWidth/2;
String[] whiteKeyLabels= {"C2", "D2", "E2", "F2", "G2", "A2", "B2", 
  "C3", "D3", "E3", "F3", "G3", "A3", "B3",
  "C4", "D4", "E4", "F4", "G4"};

// Desenha as teclas 
void drawKeys() {
  stroke(1);
  // white keys -> 19
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

  // black keys -> 13
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

// Repele a neve quando se toca
void applyKeyForce(int x, int y) {
  for (int i = 0; i<num; i++) {
    particles[i].keyForce(x,y);
  }
}

// Controles do teclado
void keyPressed(){
  if(key == 'q') { C2.play();applyKeyForce(30, 198); fill(0);ellipse(30,340,20,20);}
  if(key == '2') { Db2.play();applyKeyForce(55, 198); fill(255);ellipse(55,300,20,20);}
  if(key == 'w') { D2.play();applyKeyForce(80, 198); fill(0);ellipse(80,340,20,20);}
  if(key == '3') { Eb2.play();applyKeyForce(105, 198); fill(255);ellipse(105,300,20,20);}
  if(key == 'e') { E2.play();applyKeyForce(130, 198); fill(0);ellipse(130,340,20,20);}
  if(key == 'r') { F2.play();applyKeyForce(180, 198); fill(0);ellipse(180,340,20,20);}
  if(key == '5') { Gb2.play();applyKeyForce(205, 198); fill(255);ellipse(205,300,20,20);}
  if(key == 't') { G2.play();applyKeyForce(230, 198); fill(0);ellipse(230,340,20,20);}
  if(key == '6') { Ab2.play();applyKeyForce(255, 198); fill(255);ellipse(255,300,20,20);}
  if(key == 'y') { A2.play();applyKeyForce(280, 198); fill(0);ellipse(280,340,20,20);}
  if(key == '7') { Bb2.play();applyKeyForce(305, 198); fill(255);ellipse(305,300,20,20);}
  if(key == 'u') { B2.play();applyKeyForce(330, 198); fill(0);ellipse(330,340,20,20);}
  if(key == 'z' || key == 'i') { C3.play();applyKeyForce(380, 198); fill(0);ellipse(380,340,20,20);}
  if(key == 's') { Db3.play();applyKeyForce(405, 198); fill(255);ellipse(405,300,20,20);}
  if(key == 'x') { D3.play();applyKeyForce(430, 198); fill(0);ellipse(430,340,20,20);}
  if(key == 'd') { Eb3.play();applyKeyForce(455, 198); fill(255);ellipse(455,300,20,20);}
  if(key == 'c') { E3.play();applyKeyForce(480, 198); fill(0);ellipse(480,340,20,20);}
  if(key == 'v') { F3.play();applyKeyForce(530, 198); fill(0);ellipse(530,340,20,20);}
  if(key == 'g') { Gb3.play();applyKeyForce(555, 198); fill(255);ellipse(555,300,20,20);}
  if(key == 'b') { G3.play();applyKeyForce(580, 198); fill(0);ellipse(580,340,20,20);}
  if(key == 'h') { Ab3.play();applyKeyForce(605, 198); fill(255);ellipse(605,300,20,20);}
  if(key == 'n') { A3.play();applyKeyForce(630, 198); fill(0);ellipse(630,340,20,20);}
  if(key == 'j') { Bb3.play();applyKeyForce(655, 198); fill(255);ellipse(655,300,20,20);}
  if(key == 'm') { B3.play();applyKeyForce(680, 198); fill(0);ellipse(680,340,20,20);}
  if(key == ',') { C4.play();applyKeyForce(730, 198); fill(0);ellipse(730,340,20,20);}
  if(key == 'l') { Db4.play();applyKeyForce(755, 198); fill(255);ellipse(755,300,20,20);}
  if(key == '.') { D4.play();applyKeyForce(780, 198); fill(0);ellipse(780,340,20,20);}
  if(key == 'ç') { Eb4.play();applyKeyForce(805, 198); fill(255);ellipse(805,300,20,20);}
  if(key == ';') { E4.play();applyKeyForce(830, 198); fill(0);ellipse(830,340,20,20);}
  if(key == '/') { F4.play();applyKeyForce(880, 198); fill(0);ellipse(880,340,20,20);}
  if(key == ']') { Gb4.play();applyKeyForce(905, 198); fill(255);ellipse(905,300,20,20);}
  if(key == '￿') { G4.play();applyKeyForce(930, 198); fill(0);ellipse(930,340,20,20);}
}

// Controles do mouse
void mousePressed() {
  if (mouseX > 5 && mouseX < 55 && mouseY > 318 && mouseY < 395 ||
    mouseX > 5 && mouseX < 41   && mouseY > 198 && mouseY < 318)
  {C2.play(); applyKeyForce(30, 198);} 
  else if (mouseX > 55 && mouseX < 105 && mouseY > 318 && mouseY < 395 ||
    mouseX > 68 && mouseX < 91         && mouseY > 198 && mouseY < 318)
    {D2.play();applyKeyForce(80, 198);}
  else if (mouseX > 105 && mouseX < 155 && mouseY > 318 && mouseY < 395 ||
    mouseX > 118 && mouseX < 155        && mouseY > 198 && mouseY < 318)
    {E2.play();applyKeyForce(130, 198);}
  else if (mouseX > 155 && mouseX < 205 && mouseY > 318 && mouseY < 395 ||
    mouseX > 156 && mouseX < 191        && mouseY > 198 && mouseY < 318)
    {F2.play();applyKeyForce(180, 198);}
  else if (mouseX > 205 && mouseX < 255 && mouseY > 318 && mouseY < 395 ||
    mouseX > 218 && mouseX < 241        && mouseY > 198 && mouseY < 318)
    {G2.play();applyKeyForce(230, 198);}
  else if (mouseX > 255 && mouseX < 305 && mouseY > 318 && mouseY < 395 ||
    mouseX > 268 && mouseX < 291        && mouseY > 198 && mouseY < 318)
    {A2.play();applyKeyForce(280, 198);}
  else if (mouseX > 305 && mouseX < 355 && mouseY > 318 && mouseY < 395 ||
    mouseX > 318 && mouseX < 354        && mouseY > 198 && mouseY < 318)
    {B2.play();applyKeyForce(330, 198);}

  else if (mouseX > 355 && mouseX < 405 && mouseY > 318 && mouseY < 395 ||
    mouseX > 355 && mouseX < 391        && mouseY > 198 && mouseY < 318)
    {C3.play();applyKeyForce(380, 198);}
  else if (mouseX > 405 && mouseX < 455 && mouseY > 318 && mouseY < 395 ||
    mouseX > 418 && mouseX < 441        && mouseY > 198 && mouseY < 318)
    {D3.play();applyKeyForce(430, 198);}
  else if (mouseX > 455 && mouseX < 505 && mouseY > 318 && mouseY < 395 ||
    mouseX > 468 && mouseX < 504        && mouseY > 198 && mouseY < 318)
    {E3.play();applyKeyForce(480, 198);}
  else if (mouseX > 505 && mouseX < 555 && mouseY > 318 && mouseY < 395 ||
    mouseX > 505 && mouseX < 341        && mouseY > 198 && mouseY < 318)
    {F3.play();applyKeyForce(530, 198);}
  else if (mouseX > 555 && mouseX < 605 && mouseY > 318 && mouseY < 395 ||
    mouseX > 568 && mouseX < 591        && mouseY > 198 && mouseY < 318)
    {G3.play();applyKeyForce(580, 198);}
  else if (mouseX > 605 && mouseX < 655 && mouseY > 318 && mouseY < 395 ||
    mouseX > 618 && mouseX < 641        && mouseY > 198 && mouseY < 318)
    {A3.play();applyKeyForce(630, 198);}
  else if (mouseX > 655 && mouseX < 705 && mouseY > 318 && mouseY < 395 ||
    mouseX > 668 && mouseX < 704        && mouseY > 198 && mouseY < 318)
    {B3.play();applyKeyForce(680, 198);}

  else if (mouseX > 705 && mouseX < 755 && mouseY > 318 && mouseY < 395 ||
    mouseX > 705 && mouseX < 741        && mouseY > 198 && mouseY < 318)
    {C4.play();applyKeyForce(730, 198);}
  else if (mouseX > 755 && mouseX < 805 && mouseY > 318 && mouseY < 395 ||
    mouseX > 768 && mouseX < 791        && mouseY > 198 && mouseY < 318)
    {D4.play();applyKeyForce(780, 198);}
  else if (mouseX > 805 && mouseX < 855 && mouseY > 318 && mouseY < 395 ||
    mouseX > 818 && mouseX < 854        && mouseY > 198 && mouseY < 318)
    {E4.play();applyKeyForce(830, 198);}
  else if (mouseX > 855 && mouseX < 905 && mouseY > 318 && mouseY < 395 ||
    mouseX > 855 && mouseX < 891        && mouseY > 198 && mouseY < 318)
    {F4.play();applyKeyForce(880, 198);}
  else if (mouseX > 905 && mouseX < 955 && mouseY > 318 && mouseY < 395 ||
    mouseX > 918 && mouseX < 953        && mouseY > 198 && mouseY < 318)
    {G4.play();applyKeyForce(930, 198);}

  // black keys
  else if (mouseX > 40 && mouseX < 69 && mouseY > 198 && mouseY < 318)
    Db2.play();
  else if (mouseX > 90 && mouseX < 119 && mouseY > 198 && mouseY < 318)
    Eb2.play();

  else if (mouseX > 190 && mouseX < 219 && mouseY > 198 && mouseY < 318)
    Gb2.play();
  else if (mouseX > 240 && mouseX < 269 && mouseY > 198 && mouseY < 318)
    Ab2.play();
  else if (mouseX > 290 && mouseX < 319 && mouseY > 198 && mouseY < 318)
    Bb2.play();

  else if (mouseX > 390 && mouseX < 419 && mouseY > 198 && mouseY < 318)
    Db3.play();
  else if (mouseX > 440 && mouseX < 469 && mouseY > 198 && mouseY < 318)
    Eb3.play();

  else if (mouseX > 540 && mouseX < 569 && mouseY > 198 && mouseY < 318)
    Gb3.play();
  else if (mouseX > 590 && mouseX < 619 && mouseY > 198 && mouseY < 318)
    Ab3.play();
  else if (mouseX > 640 && mouseX < 669 && mouseY > 198 && mouseY < 318)
    Bb3.play();

  else if (mouseX > 740 && mouseX < 769 && mouseY > 198 && mouseY < 318)
    Db4.play();
  else if (mouseX > 790 && mouseX < 818 && mouseY > 198 && mouseY < 318)
    Eb4.play();

  else if (mouseX > 890 && mouseX < 918 && mouseY > 198 && mouseY < 318)
    Gb4.play();
}  

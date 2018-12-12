void setup() {
  size(960, 400);
  background(#1C1C1C);
}

float strokeWeight_keys = 2;

float whiteKeyHeight = 200;
float whiteKeyWidth = 50;

float blackKeyHeight = 120;
float blackKeyWidth = whiteKeyWidth/2;


void drawKeys() {
  // white keys = 19
  fill(#FFFFFF);
  for (int i = 0; i < 19; i++) {
    rect(5 + whiteKeyWidth * i, // x
      height-whiteKeyHeight-strokeWeight_keys*2, // y
      whiteKeyWidth, // largura
      whiteKeyHeight, // altura
      10); // arredondamento das bordas
  }

  // black keys = 13
  fill(#000000);
  for (int i = 0; i < 18; i++) {
    if(i == 2 || i == 6 || i == 9 || i == 13 || i == 16) i++;
    for (int j = 0; j < 2; j++) {
      strokeWeight(strokeWeight_keys);
      rect(5 + whiteKeyWidth-blackKeyWidth/2 + whiteKeyWidth * i, // x
        height-whiteKeyHeight-strokeWeight_keys*2, // y
        blackKeyWidth, // largura
        blackKeyHeight, // altura
        2); // arredondamento das bordas
      //i++;
    }
    //i++;
    for(int j = 0;j < 3; j++){
      rect(5 + whiteKeyWidth-blackKeyWidth/2 + whiteKeyWidth * i, // x
        height-whiteKeyHeight-strokeWeight_keys*2, // y
        blackKeyWidth, // largura
        blackKeyHeight, // altura
        2); // arredondamento das bordas
      //i++;
    }
  }
}

void draw() {

  drawKeys();
}

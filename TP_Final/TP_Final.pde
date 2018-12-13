float strokeWeight_keys = 2;

float whiteKeyHeight = 200;
float whiteKeyWidth = 50;

float blackKeyHeight = 120;
float blackKeyWidth = whiteKeyWidth/2;

int num = 3000;

Particle[] particles = new Particle[num];

void setup() {
  float partColor = random(150, 250);
  size(960, 400);
  noStroke();
  for (int i = 0; i<num; i++) {
    particles[i] =new Particle(random(0, width), random(0, height/2), 2, 0, 0, 
      color(partColor, partColor, partColor));
  }
  background(#1C1C1C);
  PFont font = createFont("magic.ttf", 50);
  textFont(font);
  loadSounds();
  //C3.play();
}



void drawKeys() {
  stroke(1);
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
    if (i == 2 || i == 6 || i == 9 || i == 13 || i == 16) i++;
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
    for (int j = 0; j < 3; j++) {
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
  background(0);
  noStroke();
  for (int i = 0; i<num; i++) {

    particles[i].applyForce();
    particles[i].ramdomForce();
    particles[i].velocity.mult(0.9);

    particles[i].update();
    particles[i].display();
  }
  fill(#FFFFFF);
  stroke(1);
  text("Magic Piano", 10, 50);
  drawKeys();
}


class Particle {
  PVector position;
  PVector velocity;
  PVector force;
  float d;
  float vx;
  float vy;
  color col;

  Particle(float _x, float _y, float _d, float _vx, float _vy, color _col) {
    position = new PVector(_x, _y);
    velocity = new PVector(_vx, _vy);
    force = new PVector(0, 0);
    d = _d;
    col = _col;
  }

  void display() {
    fill(col);
    ellipse(position.x, position.y, d, d);
  }

  void update() {
    position.add(velocity);

    if (position.x < -d/2) {
      position.x = width + d/2;
    }
    if (position.x > width + d/2) {
      position.x = - d/2;
    }
    if (position.y < -d/2) {
      position.y = height + d/2;
    }
    if (position.y > height/2 + d/2) {
      position.y = - d/2;
    }
  }

  void applyForce() {

    PVector target = new PVector(mouseX, mouseY);
    force = PVector.sub(target, position);
    float distance = force.mag();
    if (15.0 < distance) {
      force.normalize();
      force.mult(-300.0/pow(distance, 2));
      velocity.add(force);
    }
  }

  void ramdomForce() {
    PVector force = new PVector(random(-0.08, 0.08), random(0/*-0.08*/, 0.12));
    velocity.add(force);
  }
}

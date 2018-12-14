int num = 4000;
PFont magicFont;
PFont labelFont, labelFontSmall;
PImage bg;
Particle[] particles = new Particle[num];


void setup() {
  float partColor;
  size(960, 400);
  noStroke();
  for (int i = 0; i<num; i++) {
    partColor = random(220, 250);
    particles[i] =new Particle(random(0, width), random(0, height/2), 2, 0, 0, 
      color(partColor, partColor, partColor));
  }
  //background(#1C1C1C);
  bg = loadImage("data/bg.jpg");
  magicFont = createFont("data/magic.ttf", 50);
  labelFont = createFont("data/ArialMT-30.vlw", 20);
  labelFontSmall = createFont("data/ArialMT-30.vlw", 14);
  loadSounds();
  //C3.play();
}


void draw() {
  //background(0);
  image(bg,0,0);
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
  
  
  textFont(magicFont);
  text("Merry Christmas", 10, 65);
  
  drawKeys();
  println(mouseX+","+mouseY);
}

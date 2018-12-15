//Gradiente nas teclas pretas
//Gradiente nas teclas pretas
//Gradiente nas teclas pretas


int num = 3800;
PFont magicFont;
PFont labelFont, labelFontSmall;
PImage bg;
Particle[] particles = new Particle[num];


void setup() {
  float partColor;
  size(960, 400);
  frameRate(60);
  noStroke();
  for (int i = 0; i<num; i++) {
    partColor = random(220, 250);
    particles[i] =new Particle(random(0, width), random(0, height/2), 2.5, 0, 0, 
      color(partColor, partColor, partColor));
  }
  bg = loadImage("data/bg2.jpg");
  magicFont = createFont("data/magic.ttf", 50);
  labelFont = createFont("data/ArialMT-30.vlw", 20);
  labelFontSmall = createFont("data/ArialMT-30.vlw", 14);
  loadSounds();
}


void draw() {
  //background(0);
  image(bg,0,0,960,563);
  noStroke();
  for (int i = 0; i<num; i++) {

    particles[i].applyForce();
    particles[i].ramdomForce();
    particles[i].velocity.mult(0.9);

    particles[i].update();
    particles[i].display();
  }
  
  fill(#000000);
  textSize(60);
  textFont(magicFont);
  text("Feliz Natal", 8, 65);
  fill(#FFFFFF);
  textSize(50);
  textFont(magicFont);
  text("Feliz Natal", 10, 65);
  
  
  
  drawKeys();
  //println(mouseX+","+mouseY);
}

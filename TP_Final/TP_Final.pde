int num = 3800;
PFont magicFont;
PFont labelFont;
PImage bg;
Particle[] particles = new Particle[num];


void setup() {
  size(960, 400);
  frameRate(60);
  float partColor;
  
  // Cria as particulas da neve com cor levemente diferente e posição aleatória
  for (int i = 0; i<num; i++) {
    partColor = random(220, 250);
    particles[i] =new Particle(random(0, width), random(0, height/2), 2.5, 0, 0, 
      color(partColor, partColor, partColor));
  }
  
  // Carrega a imagem de fundo
  bg = loadImage("data/bg.jpg");
  
  // Carrega as fontes usadas
  magicFont = createFont("data/magic.ttf", 50);
  labelFont = createFont("data/ArialMT-30.vlw", 20);
  
  // Carrega os arquivos de audio de cada tecla do piano
  loadSounds();
}


void draw() {
  // Imagem de fundo
  image(bg, 0, 0, 960, 563);

  // Garante que a neve não tenha stroke
  noStroke();

  // Atualiza os flocos de neve
  for (int i = 0; i<num; i++) {
    particles[i].applyForce();
    particles[i].ramdomForce();
    particles[i].velocity.mult(0.9);
    particles[i].update();
    particles[i].display();
  }

  // "Sombra" do texto (usei isso porque texto branco ficou dificil de ver)
  fill(#000000);
  textSize(60);
  textFont(magicFont);
  text("Feliz Natal", 8, 65);
  // Texto escrito Feliz Natal
  fill(#FFFFFF);
  textSize(50);
  textFont(magicFont);
  text("Feliz Natal", 10, 65);

  // Desenha na tela as teclas do piano
  drawKeys();
}

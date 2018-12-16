class Particle {
  PVector position;
  PVector velocity;
  PVector force;
  float d;
  float vx;
  float vy;
  color col;
  
  // Construtor da classe
  Particle(float _x, float _y, float _d, float _vx, float _vy, color _col) {
    position = new PVector(_x, _y);
    velocity = new PVector(_vx, _vy);
    force = new PVector(0, 0);
    d = _d;
    col = _col;
  }
  // Desenha o floco de neve na tela
  void display() {
    fill(col);
    ellipse(position.x, position.y, d, d);
  }
  
  // Atualiza a posição do floco de neve na janela
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

  // Repele a neve de acordo com a posição do mouse
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

  // Repele a neve quando uma tecla do piano é tocada (veja na aba Piano)
  void keyForce(int x, int y) {
    PVector target = new PVector(x, y);
    force = PVector.sub(target, position);
    float distance = force.mag();
    if (15.0 < distance) {
      force.normalize();
      force.mult(-1500.0/pow(distance, 2));
      velocity.add(force);
    }
  }
  
  // Cria uma força aleatória para dar a impressao que os flocos de neve
  // se movem com o vento
  void ramdomForce() {
    PVector force = new PVector(random(-0.08, 0.18), random(0, 0.12));
    velocity.add(force);
  }
}

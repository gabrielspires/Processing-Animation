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

  void ramdomForce() {
    PVector force = new PVector(random(-0.08, 0.18), random(0/*-0.08*/, 0.12));
    velocity.add(force);
  }
}

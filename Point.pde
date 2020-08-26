class Point {
  PVector pos, vel;
  Point() {
    pos = new PVector(random(width), random(height));
    vel = new PVector(random(-0.5, 2), random(-2, 1));
  }

  void show() {
    noStroke();
    fill(255, 100);
    ellipse(pos.x, pos.y, 3, 3);
  }

  void update() {
    if (pos.x > width) pos.x = 0;
    if (pos.x < 0) pos.x = width;
    if (pos.y > height) pos.y = 0;
    if (pos.y < 0) pos.y = height;
    pos.add(vel);
  }
}

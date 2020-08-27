Point[] points = new Point[100];

void setup() {
  fullScreen();  // size(1200, 600);
  for (int i = 0; i < points.length; i++) {
    points[i] = new Point();
  }
}

void draw() {
  background(0, 21, 25);
  for (int i = 0; i < points.length; i++) {
    points[i].show();
    points[i].update();
    for (int j = 0; j < points.length; j++) {
      if (j != i) {
        float distance = dist(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y);
        if (distance < 100) {
          strokeWeight(20 / (10+distance));
          stroke(33, 170, 11);
          line(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y);
        }
      }
    }
  }
}

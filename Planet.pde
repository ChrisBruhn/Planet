class Planet { //<>// //<>//

  double x, y, z;
  int r=0;
  int g=0;
  int b=0;
  color c = color(r, g, b);
  int zd = 1;
  int xd = 1;
  int radius = 0;
  int orbit=0; // orbit radius



// x,y,z position, r,g,b RGB farver, ra = radius o = radius på orbit banen
  Planet(double x, double y, double z, int r, int g, int b, int ra, int o) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.r = r;
    this.g = g;
    this.b = b;
    this.radius = ra;
    this.orbit = o;

    
  }


  float getX() {
    return (float)this.x;
  }
  float getY() {
    return (float)this.y;
  }
  float getZ() {
    return (float)this.z;
  }

  color getColor() {
    return c;
  }
  int getR() {
    return r;
  }
  int getG() {
    return g;
  }
  int getB() {
    return b;
  }
  int getRadius() {
    return radius;
  }
  float getRotateSpeed() {
    return frameCount/8;
  }
  
  void move(int grader) {
    // beregn x,Z koordinater for orbit banen
    this.x = calcX(grader);
    this.z = calcZ(grader);
  }

  double calcX(int grader) {
    double x = orbit*sin(radians(grader));
    return x;
  }
  double calcZ(int grader) {
    double z = orbit * cos(radians(grader));
    return z;
  }
}

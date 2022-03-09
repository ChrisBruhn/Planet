class View { //<>//
  // tegn planeten på canvas
  void drawPlanet(Planet p) {
    pushMatrix();
    translate(p.getX(), p.getY(), p.getZ());
    rotate(p.getRotateSpeed());
    fill(p.getR(), p.getG(), p.getB());
    stroke(255);
    sphere(p.getRadius());
    popMatrix();
  }
}

 //<>//
int grader=0;
int mgrader=0;

// opret tre planeter deklarering
Planet sun;
Planet earth;
Planet moon;

// oprettet et view til at håndtere at som skal til skærm
View v = new View();

void setup() {
  size(2048, 1024, P3D);
  // giver 3d effekt
  lights();

  // initiering af de tre planeter
  sun = new Planet(width/2, height/2, -600, 255, 255, 0, 300, 0);
  earth = new Planet(800, 0, -1800, 0, 0, 255, 100, 600);
  moon = new Planet(0, 0, -800, 0, 0, 0, 30, 200);
}

void draw() {
  background(0);
  // tegner solen i midten af canvas
  v.drawPlanet(sun);

  pushMatrix();
  // flyt center ind til solens akse så jorden roterer om solen
  translate(sun.getX(), sun.getY(), sun.getZ());
  // tegn jord
  v.drawPlanet(earth);

  // jeg skulle have brugt radians men nu blev det så grader
  if (grader > 359) {
    grader =0;
  } else {
    earth.move(grader);
    grader++;
  }

  pushMatrix();
  // flyt centre ind til jordens akse så månen roterer rundt om jorden
  translate(earth.getX(), earth.getY(), earth.getZ());
  //tegn månen
  v.drawPlanet(moon);

  // her trækker jeg 5 grader fra 360 så månen drejer modsat jorden
  if (mgrader < 0) {
    mgrader = 360;
  } else {
    moon.move(mgrader);
    mgrader = mgrader-5;
  }

  popMatrix();
  popMatrix();
}

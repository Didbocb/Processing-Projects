Triangle[] trianglesS = new Triangle[20]; //arrays for making 20 triangles of each size
Triangle[] trianglesM = new Triangle[20];
Triangle[] trianglesL = new Triangle[20];

void setup() {
  size(600,300);
  shapeMode(CENTER);
  
  //set values for triangles
  for (int i=0; i < trianglesS.length; i++) {
    trianglesS[i] = new Triangle(-10, 10, 0, -10, 10, 10, #730C02, 0.25, random(-100,100), 0.25);
    
  }
  
  for (int i=0; i < trianglesM.length; i++) {
    trianglesM[i] = new Triangle(-15, 15, 0, -15, 15, 15, #F25C05, 0.5, random(-100,100), 0.5);
  }
  
  for (int i=0; i < trianglesL.length; i++) {
    trianglesL[i] = new Triangle(-20, 20, 0, -20, 20, 20, #F28705, 0.75, random(-100,100), 0.75);
  }
}

void draw() {
  background(#0D0D0D);
  //make all the triangles display and fall
  for (int i=0; i < trianglesS.length; i++) {
    trianglesS[i].display();
    trianglesS[i].fall();
  }
  
  for (int i=0; i < trianglesM.length; i++) {
    trianglesM[i].display();
    trianglesM[i].fall();
  }
  
  for (int i=0; i < trianglesL.length; i++) {
    trianglesL[i].display();   
    trianglesL[i].fall();
  }
}

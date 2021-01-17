boolean[] keys;
Car myCar, myCar2;
Wall[] walls; 

void setup() {
  size(1000,1000);
  noStroke();
  
  keys = new boolean[8];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;
  keys[4]=false;
  keys[5]=false;
  keys[6]=false;
  keys[7]=false;
  
  myCar = new Car(#FA0505, 67-20, 40);
  myCar2 = new Car(#AD17FF, 67+20, 40);
  
  walls = new Wall[4];
  walls[0] = new Wall(20,500,5,950);
  walls[1] = new Wall(980,500,5,950);
  walls[2] = new Wall(550,25,865,5);
  walls[3] = new Wall(450,975,865,5);
}

void draw() {
  background(0);
  myCar.player1(walls);
  myCar2.player2();
  
  for(int i = 0; i < walls.length; i++){
    walls[i].draw();
  }
}

boolean rectRect(float r1x, float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h) {
  if ((r1x - r1w/2) + r1w >= (r2x - r2w/2) &&    // r1 right edge past r2 left
    (r1x - r1w/2) <= (r2x - r2w/2) + r2w &&    // r1 left edge past r2 right
    (r1y - r1h/2) + r1h >= (r2y - r2h/2) &&    // r1 top edge past r2 bottom
    (r1y - r1h/2) <= (r2y - r2h/2) + r2h) {    // r1 bottom edge past r2 top
    return true;
  }
  return false;
}

void keyReleased() {
  if (key=='a')
   keys[0]=false;
  if (key=='s')
    keys[1]=false;
  if (key=='d')
    keys[2]=false;
  if (key=='w')
    keys[3]=false;
    
  if (keyCode==LEFT)
   keys[4]=false;
  if (keyCode==DOWN)
    keys[5]=false;
  if (keyCode==RIGHT)
    keys[6]=false;
  if (keyCode==UP)
    keys[7]=false;
}

void keyPressed() {
  if (key=='a')
   keys[0]=true;
  if (key=='s')
    keys[1]=true;
  if (key=='d')
    keys[2]=true;
  if (key=='w')
    keys[3]=true;
  
  if (keyCode==LEFT)
   keys[4]=true;
  if (keyCode==DOWN)
    keys[5]=true;
  if (keyCode==RIGHT)
    keys[6]=true;
  if (keyCode==UP)
    keys[7]=true;
}

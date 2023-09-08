boolean[] keys; // Key Pressed True or False
Car myCar1, myCar2; // Players' Cars
Wall[] walls; // Maze Walls 
Finish finishLine; // Finish Line
Timer sw; // Timer

void setup() {
  size(1000,1000);
  noStroke();
  textSize(30);
  //making objects and giving starting values to key pressed in setup
  keys = new boolean[8];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;
  keys[4]=false;
  keys[5]=false;
  keys[6]=false;
  keys[7]=false;
  
  myCar1 = new Car(#FA0505, 65, 80);
  myCar2 = new Car(#AD17FF, 105, 80);
  
  walls = new Wall[45];
  walls[0] = new Wall(40,40,10,920);
  walls[1] = new Wall(40,950,850,10);
  walls[2] = new Wall(960,40,10,920);
  walls[3] = new Wall(120,40,845,10);
  walls[4] = new Wall(120,40,10,150);
  walls[5] = new Wall(120,190,100,10);
  walls[6] = new Wall(220,120,200,10);
  walls[7] = new Wall(410,40,10,80);
  walls[8] = new Wall(500,120,70,10);
  walls[9] = new Wall(500,120,10,80);
  walls[10] = new Wall(300,190,200,10);
  walls[11] = new Wall(40,260,200,10);
  walls[12] = new Wall(300,190,10,200);
  walls[13] = new Wall(120,330,180,10);
  walls[14] = new Wall(180,330,10,210);
  walls[15] = new Wall(40,460,80,10);
  walls[16] = new Wall(120,460,10,300);
  walls[17] = new Wall(180,530,200,10);
  walls[18] = new Wall(180,590,200,10);
  walls[19] = new Wall(120,650,180,10);
  walls[20] = new Wall(370,590,10,200);
  walls[21] = new Wall(880,960,10,-150);
  walls[22] = new Wall(880,810,-100,10);
  walls[23] = new Wall(780,880,-200,10);
  walls[24] = new Wall(580,960,10,-80);
  walls[25] = new Wall(500,880,-70,10);
  walls[26] = new Wall(500,890,10,-80);
  walls[27] = new Wall(700,810,-200,10);
  walls[28] = new Wall(960,740,-200,10);
  walls[29] = new Wall(700,820,10,-200);
  walls[30] = new Wall(880,670,-180,10);
  walls[31] = new Wall(820,670,10,-210);
  walls[32] = new Wall(960,540,-80,10);
  walls[33] = new Wall(880,540,10,-300);
  walls[34] = new Wall(830,380,-200,10);
  walls[35] = new Wall(830,450,-200,10);
  walls[36] = new Wall(880,320,-180,10);
  walls[37] = new Wall(630,390,10,-200);
  walls[38] = new Wall(500,500,10,-400);
  walls[39] = new Wall(40,860,300,10);
  walls[40] = new Wall(200,860,10,-140);
  walls[41] = new Wall(500,700,200,10);
  walls[42] = new Wall(800,200,10,-150);
  walls[43] = new Wall(380,620,150,10);
  walls[44] = new Wall(500,620,10,-50);
  
  finishLine = new Finish(890,950,70,10);
  
  sw = new Timer();
  sw.start();
}

void draw() {
  background(0);
  //display everything in draw
  myCar1.player1();
  myCar2.player2();
  
  finishLine.draw();
  
  sw.time();
  
  for(int i = 0; i < walls.length; i++){
    walls[i].draw();
  } 
}
// Rectangle Collision detection algorithm
boolean rectRect(float r1x, float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h) {
  if (r1x + r1w/2 >= r2x &&    // r1 right edge past r2 left
      r1x <= r2x + r2w &&    // r1 left edge past r2 right
      r1y + r1h/2 >= r2y &&    // r1 top edge past r2 bottom
      r1y <= r2y + r2h) {    // r1 bottom edge past r2 top
        return true;
  }
  return false;
}
// Key Released and Pressed code for making multiple keys work at once for both players
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

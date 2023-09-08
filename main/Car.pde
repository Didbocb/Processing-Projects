class Car {
  color carC; // Car Color
  float carX; // Car X Pos
  float carY; // Car Y Pos
  float carA; // Car Angle
  float carW; // Car Width
  float carH; // Car Height
  int lives; // Player Lives
  
  //constructor
  Car(color tempC, float tempX, float tempY) {
    carC = tempC;
    carX = tempX;
    carY = tempY;
    carA = 90;
    carW = 10;
    carH = 30;
    lives = 3;
  }
  
  void player1() {
    //elements of the player include moving and displaying player
    display();
    move1();
    
    //don't let the player go out of the maze and cheat
    carX = constrain(carX,30+carH/2,970-carH/2);
    carY = constrain(carY,30+carH/2,970-carH/2);
    //checking if player hits wall
    for (int i=0; i < walls.length; i++) {
      boolean hit = rectRect(carX,carY,carW,carH, walls[i].wallX,walls[i].wallY,walls[i].wallW,walls[i].wallH);
      if (hit) {
        carX = 85 - carW;
        carY = 60;
        carA = 90;
        lives--;
      } 
    }
    //display player lives
    text("Player 1 Lives: "+lives,0,25);
    //If lives = 0 player loses and end game
    if (lives==0) {
      textMode(CENTER);
      text("Player 1 Died",400,550);
      noLoop();
    }
    //checking if player reaches finish line
    boolean hit = rectRect(carX,carY,carW,carH, finishLine.finishX,finishLine.finishY,finishLine.finishW,finishLine.finishH);
    if (hit) {
      textMode(CENTER);
      text("Player 1 Wins!",400,550);
      noLoop();
    }
  }
  
  void player2() {
    //elements of the player include moving and displaying player
    display();
    move2();
    //don't let the player go out of the maze and cheat
    carX = constrain(carX,30+carH/2,970-carH/2);
    carY = constrain(carY,30+carH/2,970-carH/2);
    //checking if player hits wall
    for (int i=0; i < walls.length; i++) {
      boolean hit = rectRect(carX,carY,carW,carH, walls[i].wallX,walls[i].wallY,walls[i].wallW,walls[i].wallH);
      if (hit) {
        carX = 85 + carW;
        carY = 60;
        carA = 90;
        lives--;
      }
    }
    //display player lives
    text("Player 2 Lives: "+lives,765,25);
    //If lives = 0 player loses and end game
    if (lives==0) {
      textMode(CENTER);
      text("Player 2 Died",400,550);
      noLoop();
    }
    //checking if player reaches finish line
    boolean hit = rectRect(carX,carY,carW,carH, finishLine.finishX,finishLine.finishY,finishLine.finishW,finishLine.finishH);
    if (hit) {
      textMode(CENTER);
      text("Player 2 Wins!",400,550);
      noLoop();
    }
  }
  //display code for displaying players and giving starting values
  void display() {
    rectMode(CENTER);
    pushMatrix();
    translate(carX,carY);
    rotate(radians(carA+90));
    fill(carC);
    rect(0,0,10,30);
    popMatrix();
  }
  //Movement code for both players
  void move1() {
    if (keys[0]) {  
      carA-=2;
    }
    if (keys[1]) {
      carX -= 2*cos(radians(carA));
      carY -= 2*sin(radians(carA));
    }
    if (keys[2]) {
      carA+=2;
    }
    if (keys[3]) {
      carX += 2*cos(radians(carA));
      carY += 2*sin(radians(carA));
    } 
  }
  
  void move2() {
    if (keys[4]) {  
      carA-=2;
    }
    if (keys[5]) {
      carX -= 2*cos(radians(carA));
      carY -= 2*sin(radians(carA));
    }
    if (keys[6]) {
      carA+=2;
    }
    if (keys[7]) {
      carX += 2*cos(radians(carA));
      carY += 2*sin(radians(carA));
    }
  }
}

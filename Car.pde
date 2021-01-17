class Car {
  color carC;
  float carX;
  float carY;
  float carA;
  float carW;
  float carH;
  
  Car(color tempC, float tempX, float tempY) {
    carC = tempC;
    carX = tempX;
    carY = tempY;
    carA = 90;
    carW = 10;
    carH = 30;
  }
  
  void player1(Wall[] walls) {
    display();
    move1();
    for (int i=0; i < walls.length; i++) {
      boolean hit = rectRect(carX,carY,carW,carH, walls[i].wallX,walls[i].wallY,walls[i].wallW,walls[i].wallH);
      if (hit) {
        carX = constrain(carX, 0+carW, walls[i].wallX-carW);
        carY = constrain(carY, 0+carH, walls[i].wallY-carH/2);
        println(hit);
      }
      else {
        println(hit);
      }  
    }
  }
  
  void player2() {
    display();
    move2();
  }
  
  void display() {
    rectMode(CENTER);
    pushMatrix();
    translate(carX,carY);
    rotate(radians(carA+90));
    fill(carC);
    rect(0,0,10,30);
    popMatrix();
  }
  
  
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

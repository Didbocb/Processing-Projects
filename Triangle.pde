class Triangle {
  float x1; //x and y values of triangles
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float speed; //speed of falling
  float rSpeed; //speed of rotation
  float rotation; //rotation starting point
  color c; //color of triangles
  float x; //starting x value of triangles
  float y; //starting y value of triangles
  
  //temporary values for all the respective variables. This is the constructor.
  Triangle(float tempX1, float tempY1, float tempX2, float tempY2, float tempX3, float tempY3, color tempC, float tempS, float tempR, float tempRS ) { 
    x1 = tempX1;
    y1 = tempY1;
    x2 = tempX2;
    y2 = tempY2;
    x3 = tempX3;
    y3 = tempY3;
    c = tempC;
    x = random(width);
    y = random(height);
    speed = tempS;
    rotation = tempR;
    rSpeed = tempRS;
  }
  
  //give color to the triangles
  void display() {
    fill(c);
  }
  
  //make triangles fall and rotate
  void fall() {
    pushMatrix();
    translate(x,y+=speed);
    rotation+=rSpeed;
    rotate(radians(rotation));
    triangle(x1, y1, x2, y2, x3, y3);
    popMatrix();
    
    //if triangles reach bottom reset them
    if (y > height) {
      x = random(width);
      y = 0;
    }
  }
}

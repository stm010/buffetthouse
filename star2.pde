class Star {
  //instance variables - data the star needss to know
  float x, y, vx, vy, size; //initial valuess of the stars data in the class, variables for every single star
  Star() {
    x = random (0, width);
    y = random (0, height);
    vx=0;
    vy=2;
    size = random (1, 5);
    //color ( white);
  }

  //behavior functions
  void show () { //how does it look
    square (x, y, size);
  }

  void act() { // the stars actions
    x = x +vx;
    y = y +vy;
    if (y > height +5) y = 0;
  }
}

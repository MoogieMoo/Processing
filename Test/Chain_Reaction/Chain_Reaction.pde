Ball[] balls;
boolean isInfected = false;

void setup() {
  
  size ( 600, 600 );
  balls = new Ball[1];
  for (int n = 0; n < balls.length; n++) {
    balls[n] = new Ball();
  }
  
}

void draw() {
  
  background(256); // black background
  for ( int i = 0; i < balls.length; i++ ) {
    balls[i].display();
    balls[i].move();
  }
}

void mouseClicked() {
    isInfected = true;
    int mX = mouseX;
    int mY = mouseY;
    System.out.println(mX);
    System.out.println(mY);
    balls[0].grow();
    /*
    for ( int i = 0; i < balls.length; i++ ) {
      balls[i].infection(mX, mY);
    }
    */
}
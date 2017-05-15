Ball[] balls;

void setup() {
  
  size ( 800, 800 );
  balls = new Ball[50];
  for (int n = 0; n < balls.length; n++) {
    balls[n] = new Ball();
  }
  
}

void draw() {
  
  background(0);//black background
  
  for ( int i = 0; i < balls.length; i++ ) {
    balls[i].display();
    balls[i].move();
  }
  
}
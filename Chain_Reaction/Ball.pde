class Ball {
  
  float radius;
  float xCor;
  float yCor;
  float horiz;
  float vert;
  
  color c;

  Ball() {
    
    radius = 16;
    float rand = random(500);
    xCor = random( ( width - rand ) + rand / 2 );
    yCor = random( ( height - rand ) + rand / 2 );
    horiz = random(10);//how much to move horizontally
    vert = random(10);//how much to move vertically
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );       
    
  }

  void display() {
    
    fill(c);
    ellipse ( xCor, yCor, ( 2 * radius ), ( 2 * radius ) );
    
  }
  
  void move() {
      xCor = xCor + horiz;
      yCor = yCor + vert;
      wall();
  }

  void wall() {
    
    if ( xCor > width || xCor < 0) {
      horiz = -horiz;
    }
    if ( yCor > height || yCor < 0) {
      vert = -vert;
    }
    
  }
  
}
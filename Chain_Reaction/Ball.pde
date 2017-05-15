class Ball {
  
  float radius;
  float xCor;
  float yCor;
  float horiz;
  float vert;
  
  color c;

  Ball() {
    
    radius = 18;
    float rand = random(500);
    xCor = random( ( width - rand - 16) + rand / 2) + 16;
    yCor = random( ( height - rand - 16) + rand / 2 ) + 16;
    horiz = random(8);//how much to move horizontally
    vert = random(8);//how much to move vertically
    
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
    
    if ( xCor + radius > width ) {
      horiz = -horiz;
    }
    if ( xCor - radius < 0 ) {
      horiz = -horiz;
    }
    if ( yCor + radius > height ) {
      vert = -vert;
    }
    if ( yCor - radius < 0 ) {
      vert = -vert;
    }    
  }
}
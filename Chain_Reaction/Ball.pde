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
    horiz = random(8);//how much to move horizontally
    vert = random(8);//how much to move vertically
    
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r , g , b );       
    
  }

  void display() {
    
    fill(c);
    ellipse ( xCor, yCor, ( xCor+radius ), ( yCor+radius ) );
    
  }
  
  void move() {
      xCor = xCor + horiz;
      yCor = yCor + vert;
      wall();
  }

  void wall() {
    
    if ( xCor + radius > width || xCor - radius < 0) {
      horiz = -horiz;
    }
    if ( yCor + radius > height || yCor - radius < 0) {
      vert = -vert;
    }
    
  }
  
}
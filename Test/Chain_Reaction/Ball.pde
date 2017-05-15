class Ball {
  
  int radius;
  float xCor;
  float yCor;
  float horiz;
  float vert;
  
  color c;
  
  Ball() {
    
    radius = 16;
    float rand = random(500);
    xCor = random( width);
    yCor = random( height);
    horiz = random(10); // how much to move horizontally
    vert = random(10); // how much to move vertically
    
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
  
  void grow() {
    for(int i = radius; i < 50; i++){
        radius++;
    ellipse ( xCor, yCor, ( 2 * radius ), ( 2 * radius ) );
      } 
      for(int i = radius; i >= 0; i--){
        radius--;
    ellipse ( xCor, yCor, ( 2 * radius ), ( 2 * radius ) );
      }
  }
  
  void infection(int x, int y) {
    if(xCor == x && yCor == y){  
      for(int i = radius; i < 50; i++){
        radius++;
        display();
      } 
      for(int i = radius; i >= 0; i--){
        radius--;
        display();
      }
    } 
  }
  
}
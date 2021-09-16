void setup() {
  size(500, 500);  
  frameRate(15);
  background(0);
 
}
void draw() {

  boolean shift = true;
  for (int x = -40; x < 500; x +=20){
    
  for (int y = -40; y < 500; y +=20){
    
      fill((int)(Math.random() *256));
    
      if (shift == true){
      scale(5+x,5+y);
      }
      else
      scale(x,y);
      
      if(shift == true){
      shift = false;
      }
      else
      {
      shift = true;
      }


    }
  }
}

void scale(int x, int y){
  beginShape();
  vertex(x,y);
  vertex(x+5,y+5);
  vertex(x+15,y+5); 
  vertex(x+20,y);
  vertex(x+15,y-5);
  vertex(x+5,y-5);
  vertex(x,y);

  endShape();
}

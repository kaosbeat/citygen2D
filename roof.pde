//roofs always get smaller towards the sky
//roofs are symmetric 90% of the times
class Roof {
boolean symmetric;
int x;
int roofwidth;
int y;
Window window;
color bc;
Roof(){
  
}

Roof(int x, int y, int roofwidth, color bc){
  //x = 0;
  if (int(random(0,10)) > 8) {symmetric = false;}
  this.x = x;
  this.roofwidth = roofwidth;
  this.y = y;
  window = new Window(3,3);
  this.bc = bc;
}

void type1(){
  int topY = height-y;
  int centerX = x + roofwidth/2;
  int roofheight = 0;
  int roofinc = 5;
  int widthfactor=0;
  for (int i=0;i<9;i++) {
    roofheight = y/((roofinc*i)+10);
    widthfactor=2*i*(i-1);
    if (widthfactor*2 > roofwidth) {i=9; widthfactor=(roofwidth+4)/2;}
    //if (i%2 == 0) { fill(25);} else {fill(255);}
    fill(bc);
    rect(this.x-2+widthfactor,topY-=roofheight,roofwidth+4-2*widthfactor, roofheight);
     if (roofheight > 5) {
       stroke(0);
       for (int j=0;j < (roofwidth+4-2*widthfactor)/4;j++) {
         window.render(this.x-2+widthfactor + j*4,topY+roofheight-4);
       }
     }  
  }
}

void render(){
  type1();
  }

}

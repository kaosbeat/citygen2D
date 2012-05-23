//roofs always get smaller towards the sky
//roofs are symmetric 90% of the times
class Roof {
//boolean symmetric;
int x;
int roofwidth;
int y;
Window window;
Window gargoyle;
color bc;
int centerX = x + roofwidth/2;
int roofheight = 0;
int roofinc = 5;
int widthfactor=0;
int rooftype = 0;

Roof(){
  
}

Roof(int x, int y, int roofwidth, color bc){
  //x = 0;
  if (int(random(0,10)) > 8) {rooftype = 1;}
  this.x = x;
  this.roofwidth = roofwidth;
  this.y = y;
  window = new Window(3,3);
  gargoyle = new Window(3,9);
  //println(gargoyle.dna);
  this.bc = bc;
  fill(bc);
  stroke(0);
}

void type1(){
  int topY = height-y;
  for (int i=0;i<9;i++) {
    roofheight = y/((roofinc*i)+10);
    widthfactor=2*i*(i-1);
    if (widthfactor*2 > roofwidth) {i=9; widthfactor=(roofwidth+4)/2;}
    //if (i%2 == 0) { fill(25);} else {fill(255);}
    rect(this.x-2+widthfactor,topY-=roofheight,roofwidth+4-2*widthfactor, roofheight);
     if (roofheight > 5) {
       for (int j=0;j < (roofwidth+4-2*widthfactor)/4;j++) {
         window.render(this.x-2+widthfactor + j*4,topY+roofheight-4);
       }
     }  
  }
}

void type2() {
  int topY = height-y;
  roofheight = 4;
  rect(this.x-2+widthfactor,topY-roofheight,roofwidth+4-2*widthfactor, 2*roofheight); 
}


void type3 () { //the one with gargoyles
  int topY = height-y;
  gargoyle.render(this.x, topY);
  gargoyle.render(this.x+roofwidth, topY);
}


void render(){
  if (rooftype == 0) { type3(); }
  if (rooftype == 1) { type3(); }
  }

}

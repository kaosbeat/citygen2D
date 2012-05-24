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
int constructionprogress;

Roof(){
  
}

Roof(int x, int y, int roofwidth, color bc){
  //x = 0;
  //constructionprogress = constructionprogress;
  rooftype = int(random(0,10));
  if ( rooftype > 9) {rooftype = 3;}
  if ( rooftype < 3) {rooftype = 2;}
  else { rooftype = 1;}
  this.x = x;
  this.roofwidth = roofwidth;
  this.y = y;
  window = new Window(3,3);
  gargoyle = new Window(7,3);
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
  
  //rect(this.x, topY-8,3,7);
  gargoyle.render(this.x, topY-5);
  //rect(this.x+roofwidth-3, topY-8,3,7);
  gargoyle.render(this.x+roofwidth-3, topY-5);
}

void type4 () {
  if (constructionprogress > 90 ) {stroke(255);} else {stroke(18,0,128);}
  int topY = height-y;
  
  line(x, topY-45, x, height);
  line(x+2, topY-45, x+2 ,height);
  line(x - 0.2*roofwidth, topY-35, x + 0.85*roofwidth, topY-35);
  line(x - 0.2*roofwidth, topY-37, x + 0.85*roofwidth, topY-37);
  line(x - 0.2*roofwidth, topY-35, x, topY-45);
  line(x, topY-45, x + 0.85*roofwidth, topY-35);
  rect(x,topY-37,2,2);
  //line(x + 0.6*roofwidth, topY-37, x + 0.6*roofwidth, topY-37 + random(10,80));
  
}


void render(int constructionprogress){
 // println (constructionprogress);
  if (constructionprogress > 99) {
    if (rooftype == 3) { type3(); }
    if (rooftype == 2) { type2(); }
    if (rooftype == 1) { type1(); }
  } else {
    type4(); 
  }
  
  
  }

}

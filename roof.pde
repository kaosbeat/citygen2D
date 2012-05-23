//roofs always get smaller towards the sky
//roofs are symmetric 90% of the times
class Roof {
boolean symmetric;
int x;
int roofwidth;
int y;

Roof(){
  
}

Roof(int x, int y, int roofwidth){
  //x = 0;
  if (int(random(0,10)) > 8) {symmetric = false;}
  this.x = x;
  this.roofwidth = roofwidth;
  this.y = y;
}

void type1(){
  int topY = height-y;
  int centerX = x + roofwidth/2;
  int roofheight = 0;
  
  for (int i=0;i<4;i++) {
    if (i%2 == 0) { fill(25);} else {fill(255);}
    rect(this.x-2+(i*(i-1)),topY-=y/80+(i*10),roofwidth+4-2*i*(i-1), y/80+(i*10));
    roofheight+=y/80+(i*10);
  }
}

void render(){
  type1();

//  println(x +","+ y+","+roofwidth+","+y/4);
  }

}

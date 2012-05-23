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
  fill(25);
  rect(this.x-2,topY-=y/20,roofwidth+4,roofheight+=y/20);
  fill(255);
  rect(this.x+roofwidth/10,topY-=y/40,roofwidth-roofwidth/10,y/40);
  roofheight+=y/40;
 // rect(this.x+roofwidth/10,height-y-y/20-y/20,roofwidth-roofwidth/10,y/30);

}

void render(){
  type1();

//  println(x +","+ y+","+roofwidth+","+y/4);
  }

}

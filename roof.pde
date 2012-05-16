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

void render(){
  fill(25);
  rect(this.x,height-y-y/4,roofwidth,y/4); 
//  println(x +","+ y+","+roofwidth+","+y/4);
  }

}

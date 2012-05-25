class Crane {
int x,y, roofwidth;

Crane() {
  this.x = 0;
  this.y = 0;
  this.roofwidth = 0 ;
}

Crane(int x, int y, int roofwidth){//building) {
  this.x = x;
  this.y = y;
  this.roofwidth = roofwidth;
}

void render(){
  int topY = height-y;
  line(x, topY-45, x, height);
  line(x+2, topY-45, x+2 ,height);
  line(x - 0.2*roofwidth, topY-35, x + 0.85*roofwidth, topY-35);
  line(x - 0.2*roofwidth, topY-37, x + 0.85*roofwidth, topY-37);
  line(x - 0.2*roofwidth, topY-35, x, topY-45);
  line(x, topY-45, x + 0.85*roofwidth, topY-35);
  rect(x,topY-37,2,2);
  line(x + 0.6*roofwidth, topY-37, x + 0.6*roofwidth, topY-37);// + random(10,80));
 }
}

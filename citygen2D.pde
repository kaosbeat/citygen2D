Window w;
Building B;
Building[] buildings;
int citysize = 45;
int x;
boolean saved = false;


void setup(){
   
   size(600,150,P2D);  
   background(255);
   smooth();
   //frameRate(4);
   //w = new Window(4,3);
   buildings = new Building[citysize];
   for (int i=0;i<citysize;i++){
     buildings[i] = new Building(x,height,int(random(3,40)),int(random(3,8)));
     x = x + buildings[i].bw;
   //B = new Building(0,150,6,3);
   }
}

void draw() {
  for (Building B:buildings) {
    B.render();
  }
  if (saved == false) { 
    Date d = new Date();
    save("2dcity"+d.getTime()+".png");
    saved = true;
  }
}

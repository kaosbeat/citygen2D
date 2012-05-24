Window w;
Building B;
Building[] buildings;
int citysize = 50;
int x;
boolean saved = false;
Sky sky;


void setup(){
   
   size(960,240,P2D);  
   background(255);
   smooth();
   //frameRate(4);
   //w = new Window(4,3);
   buildings = new Building[citysize];
   for (int i=0;i<citysize;i++){
     buildings[i] = new Building(x,height,int(random(6,40)),int(random(2,10)));
     x = x + buildings[i].bw + buildings[i].bw/5;
   //B = new Building(0,150,6,3);
   sky = new Sky();
   }
}

void draw() {
  for (Building B:buildings) {
    B.render();
  }
  sky.render();
  //save png
  if (buildings[0].constructionprogress == 50 && saved == false) { 
    Date d = new Date();
    save("2dcity"+d.getTime()+".png");
    saved = true;
  }
  
}

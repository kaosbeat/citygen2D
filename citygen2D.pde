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
   int constructionprogress;
   int bw;
   buildings = new Building[citysize];
  for (int i=0;i<citysize;i++){
      if (random(1,10)<9) { constructionprogress = 100; bw=int(random(2,10)); }
      else { 
        //constructionprogress = 65;
        constructionprogress = int(random(50,100)); 
        bw=int(random(4,10)) ;
      }
     buildings[i] = new Building(x,height,int(random(6,40)),bw,constructionprogress);
     x = x + buildings[i].bw + buildings[i].bw/5;

   }
   //B = new Building(150,height,30,5,50);
   sky = new Sky();
}

void draw() {
   background(255);
  for (Building B:buildings) {
    B.x--;
    B.roof.x--;
    B.render();
    
  }
  sky.render();
  //save png
 // if (buildings[0].constructionprogress == 100 && saved == false) { 
    if (saved == false) { 
    Date d = new Date();
    save("2dcity"+d.getTime()+".png");
    saved = true;
  }
  
}

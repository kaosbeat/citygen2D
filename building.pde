  //collection of windows
class Building {

Roof roof;
Window window;
Column column;
int x;
int y;
int floors;
int travees;
int steps;
int bh;
int bw;
int bc;
int constructionprogress;

  Building(){
    this.bc = int(random(128)+128);
    this.x = 100;
    this.y = height;
    floors = int(random(5,40));
    travees = int(random(3,18));
    window = new Window(int(random(3,9)),int(random(3,6)));
    bh = floors*window.H;
    bw = travees*window.W; 
    roof = new Roof(x,bw,bh,bc);
    column = new Column(bw,bh,x);
    constructionprogress = 0;
  }
  
  Building(int x_, int y_, int floors_, int travees_) {
    constructionprogress = 0;
    bc = int(random(128)+128);
    x = x_;
    y = y_;
    floors = floors_;
    travees = travees_;
    window = new Window();
    bh = floors*window.H;
    bw = travees*window.W; 
    //println (x +"," + bh +","+bw);
    roof = new Roof(x,bh,bw,bc);
    //door = new Door();
    if (floors>travees) {
     // column = new Column(bw,bh,x);
    }
  }
  
  void init() {

  
  }
  
  
  void render(){
   fill(bc);
   ///finished % of building
   rect(x,y-bh*constructionprogress/100,bw,bh*constructionprogress/100);
   //for(int i = 0; i<floors*travees; i++) {
      stroke(0);
   for(int i = 0; i<floors; i++) {
     for(int j = 0; j<travees; j++) {
       if (i < floors*constructionprogress/100) {
         //draw window
         window.render(x + 1 + j*this.window.W,  y-i*this.window.H - 3*this.window.H);
       } else if (i*j + i < floors*travees*constructionprogress/100 - 8*travees){
          rect(float(x + 1 + j*this.window.W), float(y-i*this.window.H - 3*this.window.H), float(this.window.W), float(this.window.H));
       //window.render(x + 1 + j*this.window.W, y-i*this.window.H - 3*this.window.H);      
       //draw nothing / crane
       //code goes here
       }
     }
   }
   if (constructionprogress < 100) { constructionprogress++;}
   roof.render(constructionprogress);
 }

}

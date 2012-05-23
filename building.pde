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
  }
  
  Building(int x_, int y_, int floors_, int travees_) {
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
      column = new Column(bw,bh,x);
    }
  }
  
  void init() {

  
  }
  
  
  void render(){
   fill(bc);
 //  for (int j =0;j<steps;++){ 
     rect(x,y-bh,bw,bh);
     for(int i = 0; i<floors*travees; i++) {
      stroke(0);
       window.render(x + i%travees*this.window.W,  y-i%floors*this.window.H);
       }
     roof.render();
     if (floors>travees) {column.render();}
     }
       
   // }
    
  
}

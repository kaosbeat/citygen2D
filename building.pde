  //collection of windows
class Building {

Roof roof;
Window window;
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
  }
  
  Building(int x_, int y_, int floors_, int travees_) {
    this.bc = int(random(128)+128);
    this.x = x_;
    this.y = y_;
    this.floors = floors_;
    this.travees = travees_;
    window = new Window();
    bh = floors*window.H;
    bw = travees*window.W; 
    println (x +"," + bh +","+bw);
    roof = new Roof(x,bh,bw,bc);
    //door = new Door();
  }
  
  void init() {

  
  }
  
  
  void render(){
   fill(bc);
 //  for (int j =0;j<steps;++){ 
     rect(x,y-bh,bw,bh);
     //println("y:" +y+", x: "+x );
     for(int i = 0; i<floors*travees; i++) {
      // this.window.x = i*this.window.W ;
      stroke(0);
       window.render(x + i%travees*this.window.W,  y-i%floors*this.window.H);
       }
     roof.render();
     }
       
   // }
    
  
}

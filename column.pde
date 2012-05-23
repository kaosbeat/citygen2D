//get 
//only and only sometimes when building height is bigger then width 



class Column{
int bw;
int bh;
int x;

  Column(){
  
  } 
  
  Column(int bw_,int bh_, int x_){
    bh = bh;
    bw = bw;
    x = x;
  }
 
  
  void render(){
    stroke(255,0,0);
    rect(x-10,height,bh/3*2,10);  
  }
  
  
}

//get 
//only and only sometimes when building height is bigger then width 



class Column{
int bw;
int bh;
int x;

  Column(){
  
  } 
  
  Column(int bw_,int bh_, int x_){
    bh = bh_;
    bw = bw_;
    x = x_;
  }
 
  
  void render(){
    stroke(255,0,0);
    //fill(255,0,0);
    rect(x-bw/10,height-bh/5*3,bw/10,bh/5*3); 
    rect(x+bw,height-bh/5*3,bw/10,bh/5*3);
    rect(x-bw/15,height-bh/5*2,bw/15,bh/5*2); 
    rect(x+bw,height-bh/5*2,bw/15,bh/5*2);
    rect(x-bw/25,height-bh/5*1,bw/25,bh/5*1); 
    rect(x+bw,height-bh/5*1,bw/25,bh/5);
    stroke(0);
  }
  
  
}

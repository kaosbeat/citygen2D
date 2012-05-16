//smallest visible part of skyline
//pixelated, randomized and repeated

class Window {
  int[] dna; 
  int H;
  int W;
  int x = 0;
  int y = 0;
  
  Window() {
    this.W = 4;
    this.H = 3;
    genWindow(H*W);
  }
  
  Window(int W, int H){
    this.W = W;
    this.H = H;
    genWindow(H*W);
  }
  //unique randomized windowlayout
  void genWindow(int bigness) {
    dna = new int[bigness];
    for(int i=0; i < bigness;i++) {
      dna[i]=round(random(0,1));
    }
    //println(dna);
  }
 
  void render(int offsetX, int offsetY) {
  //println(offsetX +","+ offsetY);
   for(int i = 0; i<dna.length; i++) {
     if (dna[i] == 1){
       point(i%W+x+offsetX,y+i/H+offsetY);
     }
   }
  } 
  
}

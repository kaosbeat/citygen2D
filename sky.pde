class Sky{
 float noiseScale=0.002;
 int skyheight; 
 float[] randomness;
 int seektype;
  
  Sky(){
    randomness = new float[200];
    for (int i=0;i<200;i++){
      randomness[i] = random(1.0);
    }
    seektype = 1;
  }
  
  void type1() {
    stroke(0);
    for(int x=0; x < width; x++) {
      float noiseVal = noise(x*noiseScale);
      skyheight = int(noiseVal*height/2);
      line(x, 0, x, skyheight );   
      for (int y=0; y<skyheight;y++){
       // println(noise(x*noiseScale, y*noiseScale));
       // println(x +"," + y);
        if (noise(x*noiseScale, y*noiseScale) > 0.5) {
          stroke(255);
          point(x,y);
        } else {
          stroke(0);
        }
      }
    }  
  
  }
  
  void type2() {
    // seektype int(x/(i+1))%200 or i
    for(int x=0; x < width; x++) {
    float noiseVal = noise((x)*noiseScale, 
                            15*noiseScale);
    stroke(0);
    line(x, 15+noiseVal*80, x, 0);
    for(int i=0;i<15+noiseVal*80;i++) {
      if (i/(15+noiseVal*80) > randomness[int(370*x/(i+1))%200] ) {  //change seektype here
       stroke(255);
       point(x,i);
      } else {
       stroke (0); 
      }
    }
  }
    
  }
  
  
  void render(){
    type2();
    
  }
  
}

class Sky{
 float noiseScale=0.02;
 int skyheight; 
  
  Sky(){
  
  }
  
  void render(){
    for(int x=0; x < width; x++) {
      float noiseVal = noise(x*noiseScale);
      stroke(0);
      skyheight = int(noiseVal*height);
      line(x, 0, x, skyheight );
      stroke(255);
      for (int i=0; i<10;i++){
        point(x, random(1,skyheight));
      }
    }
    
  }
  
}

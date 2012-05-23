class Sky{
 float noiseScale=0.02;
  
  
  Sky(){
  
  }
  
  void render(){
    for(int x=0; x < width; x++) {
      float noiseVal = noise(x*noiseScale);
      stroke(0);
      line(x, 0, x, noiseVal*height);
    }
    
  }
  
}

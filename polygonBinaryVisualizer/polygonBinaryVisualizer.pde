int nBits = 200;
float tam;

void setup(){
  size (800,800);
  background(255);
  //noLoop();
  tam = width-500;
}



void draw() {
  background(255,90);
  
  stroke(0,150);
  translate(width/2,height/2);
  nBits = int(mouseX);
  println(nBits);
  
  for(int i = 0; i < nBits; i++){
    float nums = 360.0/nBits;
    int nDigitos = decimalToBinary(i).length();
    
    float th = nums*i;
    
    for(int ii = nDigitos-1; ii > -1; ii--){
      String value = str(decimalToBinary(i).charAt(ii));
      if(value.equals("1")){
        noFill();
        fill(0);
      }else{
       fill(255);
      }
      beginShape();
      vertex(0,0);
      vertex((tam/nDigitos*(ii+1))*cos(radians(th)), (tam/nDigitos*(ii+1))*sin(radians(th)));
      vertex((tam/nDigitos*(ii+1))*cos(radians(th+nums)), (tam/nDigitos*(ii+1))*sin(radians(th+nums)));
      endShape(CLOSE);
    }
    
  }
}

String decimalToBinary (int decimal) {
 String binary = "";
 while (decimal > 0) {
   int bit = decimal%2;
   binary = bit + binary;
   decimal = decimal/2;
 }
 
 return binary;
}

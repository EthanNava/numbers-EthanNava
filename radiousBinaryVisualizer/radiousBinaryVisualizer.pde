int nBits = 111;
float tam;

void setup(){
  size (800,800);
  background(255);
  noLoop();
  tam = width-50;
}



void draw() {
  stroke(0);
  
  for(int i = 0; i < nBits; i++){
    println("//////////////////////////////  " + i);
    float nums = 360.0/nBits;
    stroke(125);
    noFill();
    ellipse(width/2,height/2,tam,tam);
    int nDigitos = decimalToBinary(i).length();
    
    for(int ii = nDigitos-1; ii > -1; ii--){
      String value = str(decimalToBinary(i).charAt(ii));
      if(value.equals("1")){
        noFill();
        fill(0);
      }else{
       fill(255);
      }
      
      arc(width/2, height/2, (tam/nDigitos)*(ii+1), (tam/nDigitos)*(ii+1), radians(nums*i), radians((nums*i)+nums), PIE);
      println(tam + " / " + nDigitos + " * " + ii + "   =   " + (tam/nDigitos) * ii);
      //println(decimalToBinary(i).charAt(ii) + " " + ii);
      //println(i + "  -  "+(tam/nDigitos)*ii);
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

main(){
  //assigment operators
  int a=10
  int? b; 
  b ??=20;
  print(b); //output:20 

  //conditional operators
  int c =(a>b) ? a:b;
  print(c); //output;10

}

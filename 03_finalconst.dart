
main(){
  var a=10;
  final double b;  //ambas definen una constante que no cambi, guardar el valor de una operacion.
  const double c=20; //variable mas ligera que final, constante es mas ligera 
  a=20;
  b=20;
  //c=20;

  print(a);
  print(b);
  print(c);

  final List<String> personasFinal =["juan", "pedro, " "maria"];
  List<String> personaConst=const["ana", "luis", "carlos"];


  personaConst.add("maria");
  personaConst.add("sofia");


  print(personasFinal);
  print(personaConst);

  

}
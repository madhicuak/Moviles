main(){

  //=========numero===============
  int a = 10; 
  double b = 3.14;
  int? c; 
  late int d; 
  d = 20; 

  print(a); 
  print(b);
  print(c);
  print(d);
  print(a+b);



//========cadenas============

  String nombre= 'tony';
  String apellido = 'stark';
  String apellidoRandom= "o'connor";
  String? cadenaVacia;
  String nombreCompleto= '$nombre $apellido';
  String multilinea = 
      '''

hola mundo 
  ¿como estas $nombre $apellido? 
  no me quiero ir señor $apellido
   ''';
   print(nombre);
   print(apellido);
   print(nombreCompleto);
   print(cadenaVacia);
   print(apellidoRandom);
   print(multilinea);


  //=========booleanos=====
  bool isActive=true;
  bool isNotActive=!isActive;
  print(isActive);
  print(isNotActive);

  //====array========

  var general =["lex luthor" , "red skull", "doom", 1, true, 3.14];
  List<String> villanos = ["lex luthor", "red skull", "doom"];
  villanos[0]="bizarro";
  print(general);
  print(villanos);
  villanos.add("siniestro");
  villanos.add("siniestro");
  villanos.add("siniestro");
  villanos.add("siniestro");
  print(villanos);

  //============sets====

  var villanosSet ={"lex luthor" , "red skull", "doom", 1, true, 3.14};
  Set<String> villanosSetString= {"lex luthor", "red skull", "doom"};
  print(villanosSet);
  print(villanosSetString);
  villanos.add("siniestro");
  villanos.add("siniestro");
  villanos.add("siniestro");
  villanos.add("siniestro");
  print(villanosSetString);


  var villanosSet2 = villanos.toSet();
  print(villanosSet2.toList());

//====maps===

  var iroman={
    "nombre": "tony stark",
    "poder": "inteligencia y dinero",
    "edad": 40, 
  };

  Map<String, dynamic>warMachine = {
    "nombre":"rodey rhodes",
    "poder": "tactico y tecnologia", 
    "edad": "40", 
  };
 
 //map, permite tener la llave y el valor

  Map<String , dynamic> capitanAmerica= Map();
  //capitanAmerica["nombre"]="steve roger";
  capitanAmerica.addAll({
    "nombre":"steve rogers",
    "poder": "fuerza, agilidad y resistencia", 
    "edad":102, 
  });

  capitanAmerica.addAll(iroman);
  print(iroman);
  print(warMachine);
  print(iroman["nombre"]);
  print(warMachine["nombre"]);
  }


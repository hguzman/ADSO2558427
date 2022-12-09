```


void main(){

  Conejo conejo2 = Conejo();
  conejo2.nombre = "rabbit";
  conejo2.peso = 1.6;
  conejo2.edad = 3;
   
  print ("El nombre es:  ${conejo2.nombre!}, Su peso es de: ${conejo2.peso!.toString()} Su edad es de: ${conejo2.edad!.toString()}");
  
  Leon leon2 = Leon ();
  leon2.nombre = "lion";
  leon2.peso = 80.5; 
  leon2.edad = 9;
  
  print ("El nombre es:  ${leon2.nombre!}, Su peso es de: ${leon2.peso!.toString()} Su edad es de: ${leon2.edad!.toString()}");
  
  Humano humano2 = Humano ();
  humano2.nombre = "hombre";
  humano2.peso = 73.5;
  humano2.edad = 29;
  
  print ("El nombre es:  ${humano2.nombre!}, Su peso es de: ${humano2.peso!.toString()} Su edad es de: ${humano2.edad!.toString()}");
  
}



  class Animal{
      String? nombre;
    
  }
 
 class Herbivoro extends Animal{
   
      int? edad;
     
 }

class Conejo extends Herbivoro{
   
      double? peso;
  
}
class Carnivoro extends Animal{
  
      int? edad;
  
}

class Leon extends Carnivoro{
  
      double? peso;
  
}

class Omnivoro extends Animal{
      int? edad;
  
}

class Humano extends Omnivoro{
  
       double? peso;
  
}


``` 
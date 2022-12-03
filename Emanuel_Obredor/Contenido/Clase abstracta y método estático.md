# Clase abstracta y método estático
``` 
void main(){
  Vaca vaca = Vaca();
  vaca.emitirSonido();
  
  Gato gato = Gato();
  gato.emitirSonido();
  
  Perro perro = Perro();
  perro.emitirSonido();
  perro.nombre = "El nombre del perro es: Nefasto antonio";
  print(perrito.nombre);
  
  
   Carnivoro.imc(15,95);
  
  
  }
abstract class Animal{
  void emitirSonido();
}


class Vaca implements Animal{
  @override
  void emitirSonido(){
    print("El sonido de la vaca es: muuuu");
  }
}

class Gato implements Animal{
  @override
  void emitirSonido(){
    print("El sonido de el gato es: miauuu");
  }
}

class Carnivoro{
  String? nombre;
   static void imc( altura, peso){
     int multipp = altura * peso;
     print("El imc es: $multipp");
   
  } 
}

class Perro extends Carnivoro implements Animal{
  @override
  void emitirSonido(){
    print("El sonido del perro es: wof wof ");
  }
}
``` 
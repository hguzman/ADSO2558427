``` 
void main() {
  Perro perro = Perro();
  Gato gato = Gato();
  Vaca vaca = Vaca();
  
  
  vaca.emitirSonido();
  gato.emitirSonido();
  perro.emitirSonido();
  perro.nombre = "el nombre del perro es: rafa";
  print(perro.nombre);
  Carnivoro.imc(10, 20);
  
}


class Carnivoro{
  String nombre = "rafa";
  static void imc (int altura, int peso){
    int calcular = altura * peso;
    print("la masa muscular es: $calcular");
  }
}

abstract class Animal{
  void emitirSonido(); 
  
}

class Gato implements Animal{
  @override
  void emitirSonido(){
    print("el gato hace: Miauuuuuuuu");
  }
}

class Vaca implements Animal{
  void emitirSonido(){
  print("la vaca hace: Muuuuuuuu");
 }  
} 

  
class Perro extends Carnivoro implements Animal{
   void emitirSonido(){
     print("el perro hace: Wauuuuu");
     
     
   }
}
  ``` 

## Clase Abstracta y metodo estatico

~~~

void main() {
  
  Vaca vaca = Vaca();
  vaca.emitirSonido();
  
  Gato gato = Gato();
  gato.emitirSonido();
  
  Perro perro = Perro();
  perro.nombre="Camilo";
  print("El nombre del perro es: ${perro.nombre}");
  perro.emitirSonido();
  
  Carnivoro.imc(10,5);
}

abstract class Animal{
  void emitirSonido();
}

class Vaca implements Animal{
  @override
  void emitirSonido(){
    print("El sonido de la vaca es: Muuuuuu");
  }
}  
class Gato implements Animal{
  @override
  void emitirSonido(){
    print("El sonido del gato es: Miaaaauuuuu");
  }
}

class Carnivoro {
 String? nombre;
 
 static void imc(int altura, int peso){
   print("El indice de masa corporal es...");
   print(peso * altura);
 }
}

class Perro extends Carnivoro implements Animal{
  @override
  void emitirSonido(){
    print("El sonido del perro es: Guauuuu");
  }
}


~~~
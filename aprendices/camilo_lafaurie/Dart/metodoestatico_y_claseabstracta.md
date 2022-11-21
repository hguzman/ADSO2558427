## Camilo Lafaurie
## Clase abstracta y metodo estatico 

~~~
void main() {
  
  Vaca vaca = Vaca();
  vaca.emitirSonido();
  
  Gato gato = Gato();
  gato.emitirSonido();
  
  Perro perro = Perro();
  perro.nombre="Shailo";
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
    print("El sonido de la vaca es: MUUUUU");
  }
}  
class Gato implements Animal{
  @override
  void emitirSonido(){
    print("El sonido del gato es: MiaaaaUUUUU");
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
    print("El sonido del perro es: GuaU guaU guaU");
  }
}

~~~

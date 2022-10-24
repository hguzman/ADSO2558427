<h2 align=center>Clase abstracta y metodo estatico</h2>

```
void main(){
  Vaca animal1 = Vaca();
  Gato animal2 = Gato();
  Perro animal3 = Perro();
  
  animal3.nombre = 'Dartañan';

  print("EL SONIDO DE LOS ANIMALES");
  animal1.emitirSonido();
  animal2.emitirSonido();
  animal3.emitirSonido();
  print("""
  ICM
  El ICM del perro ${animal3.nombre} es:
  """);
  Carnivoro.imc(12,9);
}

abstract class Animal{
  void emitirSonido();
}

class Carnivoro{
  String? nombre;
 
  static void imc(a, b) => print(a * b);
} 

class Vaca implements Animal{
  void emitirSonido() => print('muuuuuu');
}

class Gato implements Animal{
  void emitirSonido() => print('miau miau');
}

class Perro extends Carnivoro implements Animal{
  void emitirSonido() => print('wau wau');
}
```
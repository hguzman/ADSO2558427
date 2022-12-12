```
void main() {
  Vaca vaca = Vaca(); 
  vaca.emitirSonido();
  
  Gato gato = Gato();
  gato.emitirSonido(); 
  
  Perro perro = Perro();
  perro.emitirSonido();
  perro.nombre = 'El nombre es: bult';
  print(perro.nombre);
  Carnivoro.imc(25,15);
}
abstract class Animal{
  void emitirSonido();
}
class Vaca implements Animal{
  @override
  void emitirSonido(){
    print('El sonido de la vaca es: muu'); 
  }
}
class Gato implements Animal{
  @override
  void emitirSonido(){
    print ('El sonido de el gato es: miau');
  }
}
class Carnivoro{
  String? nombre;
  
  static void imc(int altura, int peso){
    int? calculo = altura * peso;
    print('La imc es: $calculo');
  }
}
class Perro extends Carnivoro implements Animal{
  @override
  void emitirSonido(){
    print ('El sonido de el perro es: guau');
  }
}
```
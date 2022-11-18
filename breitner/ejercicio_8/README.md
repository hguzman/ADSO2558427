## Clase abstractas y metodos estadicos

~~~
void main() {
  Vaca vaca = Vaca(); 
  vaca.emitirSonido();
  
  Pajaro pajaro = Pajaro();
  pajaro.emitirSonido(); 
  
  Perro perro = Perro();
  perro.emitirSonido();
  perro.nombre = 'El nombre es: Jhango';
  print(perro.nombre);
  Carnivoro.imc(20,15);
}
abstract class Animal{
  void emitirSonido();
}
class Vaca implements Animal{
  @override
  void emitirSonido(){
    print('El sonido de la vaca es: moo'); 
  }
}
class Pajaro implements Animal{
  @override
  void emitirSonido(){
    print ('El sonido de el pajaro es: pioo');
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
    print ('El sonido de el perro es: wiii');
  }
}
~~~
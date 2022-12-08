~~~
void main(){
  
  Gato gato = Gato();
  gato.emitirsonido();
  
  Vaca vaca = Vaca();
  vaca.emitirsonido();
  
  Perro perro = Perro();
  perro.nombre = 'Firu';
  print(perro.nombre);
  perro.emitirsonido();
  Carnivoro.imc(35, 10);
}
abstract class Animal{ 
  void emitirsonido();
}
class Gato implements Animal{
  @override
  void emitirsonido(){
    print ('Miau');
  }
}
class Vaca implements Animal{
  @override
  void emitirsonido(){
    print ('Muu');
  }
}
class Carnivoro{ 
  String? nombre; 
  
  static void imc(int altura, int peso){
    int calcularImc =  peso * altura;
    print ('imc es igual a $calcularImc');
  }
}
class Perro extends Carnivoro implements Animal{
  @override
  void emitirsonido(){
    print ('Woof');
  }
}
~~~
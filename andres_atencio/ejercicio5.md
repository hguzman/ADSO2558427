~~~

void main() {
 Perro perro = Perro();
 Gato gato = Gato();
 Vaca vaca = Vaca();
 vaca.emitirSonido();
 perro.emitirSonido();
 gato.emitirSonido();
 perro.nombre = "pepo";
 print("El nombre del perro es: ${perro.nombre}");
 Carnivoro.imc(10,10);  
}
abstract class Animal{
  void emitirSonido();
}
class Carnivoro{
  String? nombre;
  static void imc(int a,int p){
  print(a * p);
 }
}
class Gato implements Animal{
  void emitirSonido(){
    print("El Gato hace: Miau");
  }  
}
class Vaca implements Animal{
  void emitirSonido(){
    print("El Vaca hace: Meee");
  }
}
class Perro extends Carnivoro implements Animal{
  void emitirSonido(){
    print("El Perro hace: guauuuuu");
  }
}
~~~
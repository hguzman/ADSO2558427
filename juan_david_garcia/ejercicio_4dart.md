```
void main() {
 Perro perro = Perro();
 Gato gato = Gato();
 Vaca vaca = Vaca();
 vaca.emitirSonido();
 perro.emitirSonido();
 gato.emitirSonido();
 perro.nombre = "Tobi";
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
  @override
  void emitirSonido(){
    print("El Gato hace: Miauuuuuu");
  }  
}
class Vaca implements Animal{
  @override
  void emitirSonido(){
    print("El Vaca hace: Muuuuuu");
  }
}
class Perro extends Carnivoro implements Animal{
  @override
  void emitirSonido(){
    print("El Perro hace: Guau");
  }
}
```
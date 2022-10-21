```
void main() {
  Vaca vaca = Vaca();
  Gato gato = Gato();
  Perro perro = Perro();
  vaca.emitirSonido();
  gato.emitirSonido();
  perro.emitirSonido();
  perro.nombre = ("Black");
  print(perro.nombre);
  Carnivoro.imc(12,4);
  
  
}
abstract class Animal{
  void emitirSonido();
}
class Carnivoro{
  String? nombre;
  
  static void imc(int altura, int peso){
    int calcularImc = altura * peso;
    print ("La masa muscular es: $calcularImc");
 }
}
class Vaca implements Animal{
  @override
  void emitirSonido(){
    print("La vaca hace: Muuuuuuu");
    
  }
}
class Gato implements Animal{
  @override
  void emitirSonido(){
    print("El gato hace: Miauuu");
  }
}
class Perro extends Carnivoro implements Animal {
  @override
  void emitirSonido(){
    print("El perro hace: Wauuu");
  }
}
```

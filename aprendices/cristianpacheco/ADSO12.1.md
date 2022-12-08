```
void main() {
  
  Perro chihuagua= new Perro();
  chihuagua.nombre= "bruno";
  Carnivoro.imc(7,6);
  print('el nombre del perro es: ${chihuagua.nombre}');
  chihuagua.emitirSonido();
  print('---------------------------------------------------');
  Gato abisinio= new Gato();
  abisinio.nombre="misifu";
  Carnivoro.imc(4,5);
  print('el nombre del gato es: ${abisinio.nombre}');
  abisinio.emitirSonido();
  print('---------------------------------------------------');
  Vaca ma= new Vaca();
  ma.nombre="lulu";
  Carnivoro.imc(8,9);
  print('el nombre del vaca es: ${ma.nombre}');
  ma.emitirSonido();
  print('---------------------------------------------------');
}
abstract class Animal {
  void emitirSonido();
}
class Carnivoro {
  String? nombre;
  
  static void imc( double? altura,peso){
  double masa= altura!*peso!;
    print('la masa es: $masa');
  }
}
class Perro extends Carnivoro implements Animal{
  void emitirSonido(){
    print('guau');
  }
  
}
class Gato extends Carnivoro implements Animal{
  void emitirSonido(){
    print('miau');
  }
}
class Vaca extends Carnivoro implements Animal{
  
  void emitirSonido(){
    print('muuu');
  }
}
```
```
void main() {
  
  Perro chihuagua= new Perro();
  chihuagua.nombre="bruno";
  print('el nombre del perro es: ${chihuagua.nombre}');
  chihuagua.emitirSonido();
  print('---------------------------------------------------');
  Gato abisinio= new Gato();
  abisinio.emitirSonido();
  print('---------------------------------------------------');
  Vaca ma= new Vaca();
  ma.emitirSonido();
  print('---------------------------------------------------');
}
abstract class Animal {
  void emitirSonido();
}
class Carnivoro {
  String? nombre;
  
  static void imc( double? altura,peso){
  double masa= altura!*peso!;
    print('la masa es: $masa');
  }
}
class Perro extends Carnivoro implements Animal{
  void emitirSonido(){
    print('guau');
  }
  
}
class Gato extends Carnivoro implements Animal{
  void emitirSonido(){
    print('miau');
  }
}
class Vaca extends Carnivoro implements Animal{
  
  void emitirSonido(){
    print('muuu');
  }
}
```
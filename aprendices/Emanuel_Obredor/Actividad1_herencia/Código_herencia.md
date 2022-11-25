# Código Herencia Animales

```
void main(){ 
  Conejo conejo = Conejo();
  conejo.nombre = "conejo";
  conejo.peso = 2.4;
  conejo.altura = 20.0;
  print("El nombre es: ${conejo.nombre!}, la altura: ${conejo.altura!.toString()} y el peso: ${conejo.peso!.toString()}");
  Tigre tigre = Tigre();
  tigre.nombre = "tigre";
  tigre.altura = 2.0;
  tigre.peso = 60;
  print("El nombre es: ${tigre.nombre!}, la altura: ${tigre.altura!.toString()} y el peso: ${tigre.peso!.toString()}");
  Simio simio = Simio();
  simio.nombre = "simio";
  simio.peso = 50;
  simio.altura = 1.50;
  print("El nombre es: ${simio.nombre!}, la altura: ${simio.altura!.toString()} y el peso: ${simio.peso!.toString()}");
}
class Animal{
  String? nombre;
}
class Herbivoro extends Animal{
  double? altura;
}
class Carnivoro extends Animal{
  double? altura;
}
class Ovnivoro extends Animal{
  double? altura;
}
class Conejo extends Herbivoro{
  double? peso;
}
class Tigre extends Carnivoro{
  double? peso;
}
class Simio extends Ovnivoro{
  double? peso;
}
```

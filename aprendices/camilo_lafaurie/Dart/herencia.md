## Camilo Lafaurie
## Ejercicio herencia
~~~

void main() {
  Conejo conejo = new Conejo();
  conejo.nombre = "Conejo";
  conejo.comida = "Zanahoria";
  conejo.edad = 9 ;
  print("""
 ---------------------------------
  El nombre es ${conejo.nombre}
  su comida es ${conejo.comida}
  su promedio de edad es:(${conejo.edad})años.
 ---------------------------------
  """);
  Leon leon = new Leon();
  leon.nombre = "Leon";
  leon.comida = "Carne, ";
  leon.edad = 16;
  print("""
 ---------------------------------
  El nombre es ${leon.nombre}
  su comida es ${leon.comida}
  su promedio de edad es:(${leon.edad})años.
 ---------------------------------
  """);
  Hiena hiena = new Hiena();
  hiena.nombre = "Hiena";
  hiena.comida = "Carne";
  hiena.edad = 15;
  print("""
  ---------------------------------
  El nombre es ${hiena.nombre}
  su comida es ${hiena.comida}
  su promedio de edad es:(${hiena.edad})años.
  ---------------------------------
  """);
  Hombre hombre = new Hombre();
  hombre.nombre = "Luis";
  hombre.comida = "Sandwich";
  hombre.edad = 99;
  print("""
  ---------------------------------
  El nombre es ${hombre.nombre}
  su comida es ${hombre.comida}
  su promedio de edad es:(${hombre.edad})años.
  ---------------------------------
  """);
}
class Animal{
  String? nombre;
  }
class Herbivoro extends Animal{
  String? comida;
}
class Carnivoro extends Animal{
  String? comida;
}
class Omnivoro extends Animal{
  String? comida;
}
class Hombre extends Omnivoro{
  int? edad;
}
class Conejo extends Herbivoro{
  int? edad;
}
class Leon extends Carnivoro{
  int? edad;
}
class Hiena extends Carnivoro{
  int? edad;
}

~~~
## Herencia

~~~

void main() {
  Conejo conejo = new Conejo();
  conejo.nombre = "Conejo";
  conejo.comida = "Zanahoria";
  conejo.altura = 25.0;
  print("\n El nombre es ${conejo.nombre}, su comida es ${conejo.comida}, su altura es ${conejo.altura}");
  Leon leon = new Leon();
  leon.nombre = "Leon";
  leon.comida = "Carne";
  leon.altura = 40.0;
  print("\n El nombre es ${leon.nombre}, su comida es ${leon.comida}, su altura es ${leon.altura}");
  Hiena hiena = new Hiena();
  hiena.nombre = "Hiena";
  hiena.comida = "Carne";
  hiena.altura = 20.0;
  print("\n El nombre es ${hiena.nombre}, su comida es ${hiena.comida}, su altura es ${hiena.altura}");
  Hombre hombre = new Hombre();
  hombre.nombre = "Luis";
  hombre.comida = "Sandwich";
  hombre.altura = 170;
  print("\n El nombre es ${hombre.nombre}, su comida es ${hombre.comida}, su altura es ${hombre.altura}");
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
  double? altura;
}
class Conejo extends Herbivoro{
  double? altura;
}
class Leon extends Carnivoro{
  double? altura;
}
class Hiena extends Carnivoro{
  double? altura;
}


~~~
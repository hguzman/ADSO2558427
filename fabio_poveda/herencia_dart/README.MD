# Herencia dart

~~~
void main() {
  Conejo conejo = new Conejo();
  conejo.nombre = 'Conejo';
  conejo.edad = 9;

  Leon leon = new Leon();
  leon.nombre = 'León';
  leon.edad = 10;

  Hiena hiena = new Hiena();
  hiena.nombre = 'Hiena';
  hiena.edad = 12;

  Hombre hombre = new Hombre();
  hombre.nombre = 'Hombre';
  hombre.edad = 75;

  print("""
    El nombre del animal es: ${conejo.nombre}
    Viene de la familia de los: ${conejo.familia}
    Se alimenta de: ${conejo.alimento} 
    La edad promedio de este animal es de: ${conejo.edad} años 
      
    El nombre de este animal es: ${leon.nombre}
    Viene de la familia de los: ${leon.familia}
    Se alimenta de: ${leon.alimento} 
    La edad promedio de este animal es de: ${leon.edad} años

    El nombre de este animal es: ${hiena.nombre}
    Viene de la familia de los: ${hiena.familia}
    Se alimenta de: ${hiena.alimento} 
    La edad promedio de este animal es de: ${hiena.edad} años

    El nombre de este animal es: ${hombre.nombre}
    Viene de la familia de los: ${hombre.familia}
    Se alimenta de: ${hombre.alimento} 
    La edad promedio de este animal es de: ${hombre.edad} años
      """);
}

class Animal {
  String? nombre;
  int? edad;
}

class Herbivoro extends Animal {
  String alimento = 'Plantas y hiervas';
}

class Carnivoro extends Animal {
  String alimento = 'Carne y órganos';
}

class Omnivoro extends Animal {
  String alimento = 'Plantas y carne';
}

class Conejo extends Herbivoro {
  String familia = 'Lepóridos';
}

class Leon extends Carnivoro {
  String familia = 'Felino';
}

class Hiena extends Carnivoro {
  String familia = 'Hyaenidae';
}

class Hombre extends Omnivoro {
  String familia = 'Homínidos';
}
~~~
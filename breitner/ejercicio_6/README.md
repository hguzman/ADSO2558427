## ejercicio de herencia 

~~~
void main() {
  Leon leon = new Leon();
  leon.edad = 55;
  leon.habitad = "africa";
  leon.especie = "depredador";
  leon.carne = "gasela";
  Conejo conejo = new Conejo();
  conejo.especie = "herbivoro";
  conejo.edad = 22;
  conejo.habitad = "sudamerica";
  Hiena hiena = new Hiena();
  hiena.especie = "depredador";
  hiena.edad = 55;
  hiena.habitad = "africa";
  Hombre hombre = new Hombre();
  hombre.edad = 89;
  hombre.especie = "humana";
  hombre.habitad = "cualquiera";

  print(
      'la especie es: ${leon.especie},su edad es: ${leon.edad} y su comida favorita es la ${leon.carne}');
  (leon.edad);
}

class Animal {
  String? especie;
  int? edad;
  String? habitad;
}

class Omnivoro extends Animal {}

String? detodito;

class Carnivoro extends Animal {
  String? carne;
}

class Herbivoro extends Animal {
  String? frutas;
}

class Conejo extends Herbivoro {}

class Leon extends Carnivoro {}

class Hiena extends Carnivoro {}

class Hombre extends Omnivoro {}

~~~
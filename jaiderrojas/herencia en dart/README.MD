## herencia en dart

~~~
void main() {
  String titulo = 'Clasificación de animales';
  Koala koala = new Koala();
  koala.nombre = 'koala';
  koala.nombreCientifico = 'koalauys';
  koala.tipo = 'Herbivoro';
  koala.alimento = <String>['materia vegetal', 'arboles', 'eucalipto'];
  koala.edadPromedio = 13;

  Tigre tigre = new Tigre();
  tigre.nombre = 'tigre';
  tigre.nombreCientifico = ('tigresou');
  tigre.alimento = <String>[
    'pavos reales',
    'bufalos',
    'antilopes',
    'cebras',
    'jirafas'
  ];
  tigre.edadPromedio = 15;

  Halcon halcon = new Halcon();
  halcon.nombre = 'Halcon';
  halcon.nombreCientifico = 'Halcondyli';
  halcon.alimento = <String>['aves', 'lagopodos', 'patos'];
  halcon.edadPromedio = 15;

  Hombre hombre = new Hombre();
  hombre.nombre = "Humano";
  hombre.nombreCientifico = 'Humanoide';
  hombre.alimento = <String>['carnes', 'comida rapida', 'frutas'];
  hombre.edadPromedio = 88;

  print("""
  $titulo
  Los animales están dividido en 3 clasificaciones: Herviboro, carnivoro y omnivoro.
  Ejemplos:
    Animal 1:
        ${koala.nombre}
          Nombre cientifico: ${koala.nombreCientifico}
          Es clasificado como ${koala.tipo}.
          Se alimenta de ${koala.alimento}.
          Su edad de vida es de ${koala.edadPromedio} años.
    Animal 2:
        ${tigre.nombre}
          Nombre cientifico: ${tigre.nombreCientifico}
          Es clasificado como ${tigre.tipo}.
          Se alimenta de ${tigre.alimento}.
          Su edad de vida es de ${tigre.edadPromedio} años.
    Animal 3:
        ${halcon.nombre}
          Nombre cientifico: ${halcon.nombreCientifico}
          Es clasificado como ${halcon.tipo}.
          Se alimenta de ${halcon.alimento}.
          Su edad de vida es de ${halcon.edadPromedio} años.
    Animal 4:
        ${hombre.nombre}
          Nombre cientifico: ${hombre.nombreCientifico}
          Es clasificado como ${hombre.tipo}.
          Se alimenta de ${hombre.alimento}.
          Su edad de vida es de ${hombre.edadPromedio} años.
  """);
}

class Animal {
  String? nombre, nombreCientifico;
  List? alimento;
  int? edadPromedio;
}

class Herbivoro extends Animal {
  String tipo = 'herbivoro';
}

class Koala extends Herbivoro {}

class Carnivoro extends Animal {
  String tipo = 'carnivoro';
}

class Tigre extends Carnivoro {}

class Halcon extends Carnivoro {}

class Omnivoro extends Animal {
  String tipo = 'omnivoro';
}

class Hombre extends Omnivoro {}
~~~
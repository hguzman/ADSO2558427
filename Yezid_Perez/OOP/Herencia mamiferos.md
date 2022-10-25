```
void main() {
  String titulo = 'Clasificación de animales';
  Conejo conejo = new Conejo();
  conejo.nombre = 'Conejo';
  conejo.nombreCientifico = 'Oryctolagus cuniculus';
  conejo.tipo = 'Herbivoro';
  conejo.alimento = <String>['zanahorias', 'heno', 'hojas vegetales', 'pellets'];
  conejo.edadPromedio = 9;
  Leon leon = new Leon();
  leon.nombre = 'Leon';
  leon.nombreCientifico = ('Panthera leo');
  leon.alimento = <String>['ñúes','impalas', 'antílopes', 'cebras', 'jirafas', 'búfalos', 'carroña'];
  leon.edadPromedio = 15;
  
  Hiena hiena = new Hiena();
  hiena.nombre = 'Hiena';
  hiena.nombreCientifico = 'Hyaenidae';
  hiena.alimento = <String> ['aves', 'lagartos', 'serpientes']; 
  hiena.edadPromedio = 12;
  
  Hombre hombre = new Hombre();
  hombre.nombre = "Humano";
  hombre.nombreCientifico = 'Homo sapiens';
  hombre.alimento = <String> ['carnes', 'verduras', 'frutas'];
  hombre.edadPromedio = 77;
  
  print("""
  $titulo
  Los animales están dividido en 3 clasificaciones: Herviboro, carnivoro y omnivoro.
  Ejemplos:
    Animal 1:
        ${conejo.nombre}
          Nombre cientifico: ${conejo.nombreCientifico}
          Es clasificado como ${conejo.tipo}.
          Se alimenta de ${conejo.alimento}.
          Su edad de vida es de ${conejo.edadPromedio} años.
    Animal 2:
        ${leon.nombre}
          Nombre cientifico: ${leon.nombreCientifico}
          Es clasificado como ${leon.tipo}.
          Se alimenta de ${leon.alimento}.
          Su edad de vida es de ${leon.edadPromedio} años.
    Animal 3:
        ${hiena.nombre}
          Nombre cientifico: ${hiena.nombreCientifico}
          Es clasificado como ${hiena.tipo}.
          Se alimenta de ${hiena.alimento}.
          Su edad de vida es de ${hiena.edadPromedio} años.
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
class Conejo extends Herbivoro {}
class Carnivoro extends Animal {
  String tipo = 'carnivoro';
}
class Leon extends Carnivoro {}
class Hiena extends Carnivoro {}
class Omnivoro extends Animal {
  String tipo = 'omnivoro';
}
class Hombre extends Omnivoro {}

```
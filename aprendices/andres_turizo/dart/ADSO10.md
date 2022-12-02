~~~
void main() {
  Conejo conejo = Conejo();
  conejo.tipoAnimal = 'Viviparos';
  conejo.alimento = 'Plantas';
  conejo.bioma = 'Praderas secas y cubiertas de matorrales';
  Hiena hiena = Hiena();
  hiena.tipoAnimal = 'Viviparos';
  hiena.alimento = 'Carne';
  hiena.bioma = 'Sabanas, matorrales y desiertos';
  Leon leon = Leon();
  leon.tipoAnimal = 'Viviparos';
  leon.alimento = 'Carne';
  leon.bioma = 'Sabanas africanas';
  Humano humano = Humano();
  humano.tipoAnimal = 'Viviparos';
  humano.alimento = 'Carnes y plantas';
  humano.bioma = 'Casas, viviendas y refugios';
  print("""
  ANIMALES
  
  Conejo
  
  Son animales ${conejo.tipoAnimal}, es decir, se desarrollan
  dentro del utero.
  Su habitad son las ${conejo.bioma}.
  
  Hiena
  
  Son animales ${hiena.tipoAnimal}, es decir, se desarrollan
  dentro del utero.
  Su habitad son las ${hiena.bioma}.
  
  Leon
  
  Son animales ${leon.tipoAnimal}, es decir, se desarrollan
  dentro del utero.
  Su habitad son las ${leon.bioma}.
  
  Humano 
  
  Son animales ${humano.tipoAnimal}, es decir, se desarrollan
  dentro del utero.
  Su habitad son las ${humano.bioma}.
  """);
}

class Animal{
  String? tipoAnimal;
}
class Herbivoro extends Animal{
  String? alimento;  
}
class Carnivoro extends Animal{
  String? alimento;  
}
class Omnivoro extends Animal{
  String? alimento;  
}
class Conejo extends Herbivoro{
  String? bioma;  
}
class Leon extends Carnivoro{
  String? bioma;  
}
class Hiena extends Carnivoro{
  String? bioma; 
}
class Humano extends Omnivoro{
  String? bioma; 
}
~~~

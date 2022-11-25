~~~
void main(){
  
  Leon leon = Leon(); 
  Hiena hiena = Hiena(); 
  Humano humano = Humano(); 
  Conejo conejo = Conejo(); 
  
  conejo.tipoAnimal = 'vivíparos';
  conejo.alimento = 'Se alimentan principalmente de plantas';
  conejo.bioma = 'praderas secas y cubiertas de matorrales';
  
  leon.tipoAnimal = 'vivíparos';
  leon.alimento = 'Se alimentan principalmente de carnes';
  leon.bioma = 'sabanas africanas';
  
  hiena.tipoAnimal = 'vivíparos';
  hiena.alimento = 'Se alimentan principalmente de carne'; 
  hiena.bioma = 'sabana, matorrales y desierto';
  
  humano.tipoAnimal = 'vivíparos';
  humano.alimento = 'Su dieta está basada en carnes y plantas';
  humano.bioma = 'viviendas y refugios: casas';
  
  ("""
  ANIMALES
  
  1er animal: Conejo 
  
  Son animales ${conejo.tipoAnimal}, eso quiere decir que se desarrollan dentro del útero. 
  ${conejo.alimento}.
  Habitualmente se encuentran en ${conejo.bioma}.
  
  2ndo animal: Leon 
  
  Son animales ${leon.tipoAnimal}, eso quiere decir que se desarrollan dentro del útero. 
  ${leon.alimento}.
  Su habitat son las ${leon.bioma}; 
  
  3er animal: Hiena 
  
  Son animales ${hiena.tipoAnimal}, eso quiere decir que se desarrollan dentro del útero. 
  ${hiena.alimento}. 
  Suelen vivir en la ${hiena.bioma}. 
  
  4to animal: Humano
  
  Son animales ${humano.tipoAnimal}, eso quiere decir que se desarrollan dentro de un útero. 
  ${humano.alimento}; 
  Viven en ${humano.bioma}
  
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
class Leon extends Carnivoro{ 
  String? bioma;
}
class Hiena extends Carnivoro{ 
  String? bioma;
}
class Humano extends Omnivoro{  
  String? bioma;
}
class Conejo extends Herbivoro{ 
 String? bioma;
}
~~~
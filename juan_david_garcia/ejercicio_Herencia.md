```
void main(){
  Conejo conejo = Conejo();
  conejo.nombre = "Pepe";
  conejo.edad = 2;
  conejo.comida = "Heno";
  print("""
  El nombre del conejo es: ${conejo.nombre}
  La edad es: ${conejo.edad}
  La comida que mayor mente come es: ${conejo.comida}
  """);
  
  
  Leon leon = Leon();
  leon.nombre = "Simba";
  leon.edad = 5;
  leon.peso = "181 Kg";
  print("""
  El nombre del leon es: ${leon.nombre}
  La edad  es: ${leon.edad}
  El peso es ${leon.peso}
  """);
  
  
  Hiena hiena = Hiena();
  hiena.nombre = "Malia";
  hiena.edad = 7;
  hiena.peso = "50 Kg";
  print("""
  El nombre de la hiena es: ${hiena.nombre}
  La edad es: ${hiena.edad}
  El peso es: ${hiena.peso}
  """);
  
  
  Hombre hombre = Hombre();
  hombre.nombre = "Juan";
  hombre.apellido = "Garcia";
  hombre.edad = 18;
  print("""
  El nombre es: ${hombre.nombre}
  El apellido es: ${hombre.apellido}
  La edad es: ${hombre.edad}
  """);
  
}
class Animal{
  String? nombre; 
}
class Herviboro extends Animal{
  int? edad;
}
class Conejo extends Herviboro{
  String? comida;
}
class Carnivoro extends Animal{
  int? edad;
}
class Leon extends Carnivoro{
  String? peso;
}
class Hiena extends Carnivoro{
  String? peso;
}
class Omnivoro extends Animal{
  int? edad;
}
class Hombre extends Omnivoro{
  String? apellido;
}
```

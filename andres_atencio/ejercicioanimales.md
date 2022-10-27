~~~
void main(){
  Conejo conejo = Conejo();
  conejo.nombre = "messi";
  conejo.edad = 3;
  conejo.comida = "Hierba";
  print("""
  El nombre del conejo es: ${conejo.nombre}
  La edad es: ${conejo.edad}
  La comida que mayor mente come es: ${conejo.comida}
  """);
  
  
  Leon leon = Leon();
  leon.nombre = "escar";
  leon.edad = 3;
  leon.peso = "146 Kg";
  print("""
  El nombre del leon es: ${leon.nombre}
  La edad  es: ${leon.edad}
  El peso es ${leon.peso}
  """);
  
  
  Hiena hiena = Hiena();
  hiena.nombre = "sandra";
  hiena.edad = 5;
  hiena.peso = "54 Kg";
  print("""
  El nombre de la hiena es: ${hiena.nombre}
  La edad es: ${hiena.edad}
  El peso es: ${hiena.peso}
  """);
  
  
  Hombre hombre = Hombre();
  hombre.nombre = "andres";
  hombre.apellido = "atencio";
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
~~~
void main(){
   Conejo conejo = Conejo();
    conejo.nombre = "cacio";
     conejo.edad = 4;
   conejo.comida = "zanahoria";
   print("""
   El nombre es: ${conejo.nombre}
   La edad es: ${conejo.edad}
   Una de las comida que come es: ${conejo.comida}
  """);
  
  
   Leon leon = Leon();
    leon.nombre = "fabra";
     leon.edad = 3;
   print("""
   El nombre es: ${leon.nombre}
   La edad  es: ${leon.edad}
  """);
  
  
   Hiena hiena = Hiena();
    hiena.nombre = "rin";
     hiena.edad = 9;
      hiena.peso = "42 Kg";
   print("""
   El nombre es: ${hiena.nombre}
   La edad es: ${hiena.edad}
   El peso : ${hiena.peso}
  """);
  
  
   Hombre hombre = Hombre();
    hombre.nombre = "Jose";
     hombre.apellido = "Argote";
      hombre.edad = 17;
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

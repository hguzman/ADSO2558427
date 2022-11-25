# Tipos de parametros y constructores en Dart

~~~
void main() {
  Person person = new Person(nom: "Pablo", sex: "Masculino");
  person.apellido = "Ramos";
  person.edad = 23;
  print ('El sexo es: ${person.sexo}');
  print('El nombre completo es: ${person.nombrecompleto()}');
  person.edadMas();
}

class Person {
  String? nombre, sexo, apellido;
  int? edad;
  
Person ({String? nom, String? sex}){
  nombre = nom;
  sexo = sex;
 }

 String? nombrecompleto(){
    String r = nombre! + ' ' + apellido!;
    return r;
  }
  
  void edadMas({num1}){
    int eda = edad! + 3; 
    print('${eda}');
  }
}
~~~
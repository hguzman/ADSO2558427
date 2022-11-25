### Ejercicio en dartpad class person

~~~

void main(){


  Person person = new Person (nom: "Juan", sex:"Masculino" );

  person.apellido = " Hernandez";
  person.edad = 18;


  print("el nombre es:${person.nombre}");
  print("el apellido es:${person.apellido}");
  print("El nombre completo es:${person.nombrecompleto()}");
  print("El sexo es: ${person.sexo}");
  print("La edad es ${person.edad}");
  person.edadMas(12);
}

  class Person{
  String? apellido, nombre, sexo;
  int? edad; 

  Person({String? sex, String? nom}){
     sexo = sex;
     nombre = nom; 
    }

  String nombrecompleto (){
       String? noc = nombre! + apellido!; 
       return noc;  
  }

  void edadMas(int? sm){
    int s = edad! + sm!; 
    print("La edad sumada es: $s");

  }

  }

~~~~
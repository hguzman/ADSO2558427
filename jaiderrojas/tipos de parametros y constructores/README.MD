## tipos de parametros y constructores
~~~

void main() {
  Person person = Person(n: "jaider", s: "M");

  person.apellido = "rojas";
  person.edad = 18;
  print('el nombre es: ${person.nombre}');
  print('el apellido es: ${person.apellido}');
  print('el sexo es: ${person.sexo} ');
  print('el nombre completo es: ${person.nombrecompleto()}');
  print('la edad es: ${person.edad}');
  person.edadMas(4);
}

class Person {
  String? nombre, sexo, apellido;
  int? edad;

  Person({String? n, String? s}) {
    sexo = s;
    nombre = n;
  }

  String nombrecompleto() {
    String nC = nombre! + apellido!;
    return nC;
  }

  void edadMas(int eM) {
    int i = edad! + eM;
    print('la edad sumada es: $i');
  }
}
~~~
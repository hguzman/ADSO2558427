## ejercicio de dartpad

~~~
void main() {
  Person person = new Person(s: "Masculino", n: "jaime ");

  person.nombre = "jaime";
  person.apellido = "Mora";
  person.edad = 45;
  person.sexo = "Masculino";
  print('su nombre completo es:${person.nombreCompleto()}');
  person.edadMas(person.edad);
  print('su sexo es:${person.sexo}');
}

class Person {
  String? nombre;
  String? sexo;
  String? apellido;
  int? edad;

  Person({String? n, String? s}) {
    nombre = n;
    sexo = s;
  }
  String nombreCompleto() {
    String? n = nombre! + " " + apellido!;
    return n;
  }

  void edadMas(p) {
    int s = p + 5;
    print('su edad es: $s ' 'años');
  }
}

~~~
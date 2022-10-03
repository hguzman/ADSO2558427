<h2 align=center>Tipos de parametros y constructores</h2>

```
void main() {
  Person person = new Person(n: "Jhon", s: "Masculino");
  person.apellido = "Santander";
  person.edad = 20;
  print('El nombre es ${person.nombre} y su sexo es ${person.sexo}');
  print('el nombre completo es ${person.nombreCompleto()}');
  person.edadMas(person.edad);
}

class Person {
  String? nombre;
  String? sexo;
  String? apellido;
  int? edad;

  Person({String? n, String? s}) {
    sexo = s;
    nombre = n;
  }

  String nombreCompleto() {
    String? nomCom = nombre! + ' ' + apellido!;
    return nomCom;
  }

  void edadMas(num) {
    int n = num + 3;
    print('Terminara su formación a la edad a los $n años');
  }
}
```
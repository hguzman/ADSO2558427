<h2 align=center>Tipos de parametros y constructores</h2>

```
void main() {
  Person person = new Person(nombre: "Jhon", sexo: "Masculino");
  person.apellido = "Santander";
  person.edad = 20;
  print('SENA SOFIA PLUS');
  print('El nombre es ${person.nombre} y su sexo es ${person.sexo}');
  print('el nombre completo es ${person.nombreCompleto()}');
  print('Tiene ${person.edad} años');
  person.edadMas(person.edad);
}

class Person {
  String? nombre, sexo, apellido;
  int? edad;

  Person({this.nombre, this.sexo});

  String nombreCompleto() => '$nombre $apellido';
  
  void edadMas(num) {
    int n = num + 3;
    print('Terminara su formación a la edad a los $n años');
  }
}
```
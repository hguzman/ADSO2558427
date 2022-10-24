```
void main() {

    Person person = new Person(s:'Masculino', n:'seba ');
    print(person.sexo);
    print(person.nombre);
    person.apellido = "castro";
    print(person.nombrecompleto());
    person.edad = 3; 
    person.edadmas(8); 
    

}

class Person{ 
  String? nombre, sexo, apellido;
  int? edad; 
  
  Person({String? s, n}){ 
    sexo = s; 
    nombre = n;
    
    }
  String nombrecompleto(){ ;
    String a = nombre! + apellido!;
    return a;
   }
  void edadmas(int em){ 
    int sumar = edad! + em;
    print(sumar);
  }
}
```
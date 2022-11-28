```
void main() {
  Person p = new Person(sex: "masculino",nom: "daniel");
  Person.nc("daniel","duran");
  p.edadmas(17,2);

}
class Person{
  String? nombre;
  String? sexo;
  String? apellido;
  int? edad;
  Person({String? nom, sex} ){
    nombre = nom;
    sexo = sex;
    print("el nombre: $nom");
    print("el sexo: $sex");
  }
  Person.nc(String? nom, apelli){
    nombre = nom;
    apellido = apelli;
    print( "el nombre completo: $nom $apelli");
  }
  void edadmas(int? eda,int? q){
   q= eda! + 2;
   print("la edad: $q");
  }
}
```

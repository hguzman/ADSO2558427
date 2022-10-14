

void main() {
  
  Person person = new Person(h: "femenino", s:"edit");
  
  person.apellido = "tafur";
  person.edad = 23;
  print("mi sexo es:${person.sexo}");
  print("mi nombre completo es:${person.nombrecompleto()}");
  person.edadmas(4);
  
  
}


class Person{
  String?   sexo, nombre, apellido;
  int? edad;
  

Person({String? h, String? s}){
  sexo = h;
  nombre = s;
}
  
  String nombrecompleto(){
    String nomb = nombre! +" "+ apellido!;
    return nomb;
    
  }
  
  void edadmas(int? e3){
    int numero = edad! + e3!;
    print("mi edad sumada seria:${numero}");
    
  }
  
 
  
}
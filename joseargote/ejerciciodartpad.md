```
void main() {

  Person j = new Person (x;"Hombre", p; "Jose");
  
   j.apellido = "argote";
   j.edad = 17;
   print("el nombre es: ${j.nombre}");
   print("el sexo es: ${j.sexo}");
   print("la edad es: ${j.edad}");
   print("el nombre completo es: ${j.nombrecompleto()}");
   j.edadmas(numer2: 3);
   
  
  
   
          
}

  class Person{
   String? nombre,sexo,apellido;
   int? edad;
  
   Person({String? x, p}){
    nombre = x;
      sexo = p;
  }  
    String? nombrecompleto(){
     String nom = nombre! + apellido!;
      return nom;
    }  
     void edadmas ({int? numer2}){
      int w = edad! + numer2!;
       print ("la suma de la edad es $w");
      
}
```
    

# Algoritmo Dart asociaciones y agregación

~~~
void main(){
  
  Car car = Car();
  Accesorio accesorio1 = Accesorio("Rines");
  Accesorio accesorio2 = Accesorio("Neumaticos");
  Accesorio accesorio3 = Accesorio("Kit");
  Accesorio accesorio4 = Accesorio("Tapiceria");
  Accesorio accesorio5 = Accesorio("cromado");
  
  print (accesorio1.nombre);
  print (accesorio2.nombre);
  print (accesorio3.nombre);
  print (accesorio4.nombre);
  print (accesorio5.nombre);

 
  
}

class Car{
  String? placa;
  List <Accesorio> _accesorio = [];
  void setAccesorio(Accesorio accesorio){
    _accesorio.add(accesorio);
  }
}
 class Accesorio{
   String? nombre;
   Accesorio (this.nombre);
   
 }

 ~~~
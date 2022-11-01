~~~
void main(){
  Car car = Car(); 
  Accesorio parlante = Accesorio("Parlante");
  Accesorio aire = Accesorio("Aire"); 
  car.setAccesorio(parlante); 
  car.setAccesorio(aire);
  
  
  print(car.getAccesorio());
  
}
class Car{ 
  List <Accesorio> _accesorios = [];
  String? placa;
  
  void setAccesorio (Accesorio accesorio){
    _accesorios.add(accesorio);
  }
  
  List<Accesorio> getAccesorio(){
    return _accesorios;
  }
    
}
class Accesorio{ 
  String? nombre; 
  
  
  Accesorio(this.nombre);
   
  @override
  String toString() {
      return nombre!;
}
}
~~~
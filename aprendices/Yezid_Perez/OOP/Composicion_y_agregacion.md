```
void main(){
Car car = Car();
  Accesorios luces = Accesorios("luces");
  Accesorios exploradoras = Accesorios("Exploradoras");
  Accesorios tapetes = Accesorios("tapetes");
  car.setAccesorio(luces);
  car.setAccesorio(exploradoras);
  car.setAccesorio(tapetes);
  
  print(car.getAccesorios());
 
}
class Car{
 
  String? placa;
  List <Accesorios> _accesorios = [];
  
  void setAccesorio (Accesorios accesorio){
    
    _accesorios.add(accesorio);
  }
 
  List <Accesorios> getAccesorios(){
    return _accesorios;
  }
}
class Accesorios{
  String? nombre;
  Accesorios(this.nombre);
  
  
  String toString(){
    return nombre!;
  }
}
```
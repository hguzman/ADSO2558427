~~~~

void main(){
  
  Car car = Car();
  Accesorio aleron = Accesorio("Aleron");
  Accesorio luces = Accesorio("Luces");
  Accesorio volante = Accesorio("volante");
  Accesorio adornos = Accesorio("adornos");
  car.setAccesorio(aleron);
  car.setAccesorio(luces);
  car.setAccesorio(volante);
  car.setAccesorio(adornos);
  //print
  print(car._accesorios);
  print(car._accesorios[2]);
}
class Car{
  
  String? placa;
  
  List <Accesorio> _accesorios = [];
  
  void setAccesorio(Accesorio accesorio){
    _accesorios.add(accesorio);
  }
  
  List <Accesorio> getAccesorios(){
    return _accesorios;
  }
} 

class Accesorio{
  String nombre;
  Accesorio(this.nombre);
  
  @override
  String toString(){
    return nombre;
  }
}

~~~~
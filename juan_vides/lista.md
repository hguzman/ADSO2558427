```
void main() {
  Car car = Car();
  Accesorio accesorio1 = Accesorio("Rines");
  Accesorio accesorio2 = Accesorio("Body kit");
  car.placa = "XXX666";
  car.setAccesorio(accesorio1);
  car.setAccesorio(accesorio2);
  print("La placa es: ${car.placa}");
  print(car.getAccesorio());
  

}
class Car{
  List<Accesorio> _accesorios=[];
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
    
    String toString(){
        return nombre!;
    }
}
```
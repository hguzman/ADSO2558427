<h2 align=center>Asociaciones - Agregación</h2>

```
void main(){
  Car car = Car();
  Accesorio androidCar = Accesorio("android car");
  Accesorio radio = Accesorio('radio');
  car.setAccesorio(androidCar);
  car.setAccesorio(radio);
  
  print(androidCar.nombre);
  print(radio.nombre);
  
}

class Car{
  List <Accesorio> _accesorios = [];
  String? placa;
  
  void setAccesorio(Accesorio accesorio){
    _accesorios.add(accesorio);
  }
  
  List<Accesorio> getAccesorios(){
    return _accesorios;
  }
}

class Accesorio {
  String? nombre;
  Accesorio(this.nombre);
}
```
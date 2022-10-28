~~~
void main(){
  Car car = Car();
  Accesorio tapete = Accesorio("Tapete");
  Accesorio retrovisor = Accesorio("Retrovisor");
  Accesorio parabrisas = Accesorio("Parabrisas");
  car.setAccesorio(tapete);
  car.setAccesorio(retrovisor);
  car.setAccesorio(parabrisas);
  car.placa = "UVX456";
  
  print(car.placa);
  print(car.getAccesorio());
}
class Car{
  List<Accesorio> _accesorios=[];
  String? placa;
  
  void setAccesorio(Accesorio accesorio){
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
  String toString(){
    return nombre!;
  }
 
}
~~~

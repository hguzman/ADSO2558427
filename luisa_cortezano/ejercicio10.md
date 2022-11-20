void main(){
  Car car = Car();
  car.placa = 'XPJ456';
  Accesorio altavoces = Accesorio ('altavoces');
  Accesorio alarma = Accesorio ('alarma');
  Accesorio gps = Accesorio ('GPS');
  car.setAccesorios(altavoces); 
  car.setAccesorios(alarma);
  car.setAccesorios(gps);
  print('los accesorios son: ${altavoces.nombre}, ${alarma.nombre}, ${gps.nombre}.');
  print('la placa es: ${car.placa}');
}
class Car{
  String? placa;
  List <Accesorio> _accesorios = [];
  
  void setAccesorios(Accesorio accesorio){
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
# Agregación y Composición
````
class Car{
  List <Accesorio> _accesorios = [];
  String? placa; 
  
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

void main(){
  Car car1 = Car();
  car1.setAccesorio(Accesorio("Radio"));
  car1.setAccesorio(Accesorio("Tapete"));
  car1.placa = "AWT234";
  print(car1.getAccesorios());
}
````
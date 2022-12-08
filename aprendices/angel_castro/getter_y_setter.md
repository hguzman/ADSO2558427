~~~
void main(){
    Car car = Car();
    Accesorio tapete = Accesorio ("tapete");
    car.setAccesorios(tapete); 
    Accesorio pantalla = Accesorio ("pantalla");
    car.setAccesorios(pantalla);
    Accesorio radio = Accesorio ("radio");
    car.setAccesorios(radio);
    print("los accesorios son:${car._accesorios}");
}

class Car{

  String? placa;
  List <Accesorio> _accesorios = [];
    void setAccesorios(Accesorio accesorios){
       _accesorios.add(accesorios);
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
~~~
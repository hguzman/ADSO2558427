``` 

class Car{
  List <Accesorio> _accesorios = [];
  String? placa;
  
 
 
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


void main(){
    Car toyota = Car();
    toyota.setAccesorios(Accesorio("calcomanias"));
    toyota.setAccesorios(Accesorio("muñecos"));
    toyota.placa = "AFG672";
    print("los accesorios son: ${toyota._accesorios}");
}

``` 
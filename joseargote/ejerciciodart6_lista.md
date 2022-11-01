 ```
void main() { 
   Car car = Car();
  Accesorios accesorio_1 = Accesorios("tapete");
  Accesorios accesorio_2 = Accesorios("retrovisor");
  Accesorios accesorio_3 = Accesorios("neumatico");
   car.placa = "IQI62D";
   car.setAccesorio(accesorio_1);
  car.setAccesorio(accesorio_2);
  car.setAccesorio(accesorio_3);
     print("La placa es: ${car.placa}");
  print(car.getAccesorios());
   
  
   

}
 class Car{
  List<Accesorios> _accesorios=[];
  String? placa;
    void setAccesorio (Accesorios accesorio){
      _accesorios.add(accesorio);
     
    }
  List<Accesorios> getAccesorios(){
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
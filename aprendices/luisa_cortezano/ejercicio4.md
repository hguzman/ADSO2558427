```
void main() {
  Operacion operacion = new Operacion();
  operacion.num1 = 3.5;
  operacion.num2 = 2.0; 
  print('la suma es: ${operacion.sumar()}');
  operacion.restar();
  print('la multiplicacion es: ${operacion.multiplicar()}');
}
class Operacion{
  double? num1;
  double? num2;
  
  double sumar(){
    double s = num1! + num2!; 
    return s;
  }
  
  void restar(){
    double r = num1! - num2!; 
    print('la resta es: $r');    
  }
  
  double multiplicar(){
    double m = num1! * num2!; 
    return m;
  } 
}
``` 
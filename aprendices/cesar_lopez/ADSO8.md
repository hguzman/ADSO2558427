```
void main() { 

 Operacion operacion = new Operacion();
 operacion.num1 = 2.0;
  operacion.num2 = 7.0;
  print('la suma es: ${operacion.sumar()}');
  operacion.restar();
  print('la multiplicacion es: ${operacion.multiplicar()}');
 
}

class Operacion{
 double? num1;
 double? num2;
 
  double sumar(){
    double sumar = num1! + num2!; 
   return sumar; 
  }
      
  void restar(){
    double c = num1! - num2!;
    print('la resta es: $c');
  }
    
    double multiplicar(){
      double multiplicar = num1! * num2!;
      return multiplicar; 
    }
  
}
```
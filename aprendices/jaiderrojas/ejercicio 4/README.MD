#ejercicio en dart

~~~

void main(){
  Operacion operacion = new Operacion();
  operacion.num1= 4.5;
  operacion.num2= 5.6;
  
  
 print(operacion.sumar());
  print(operacion.multiplicar());
  operacion.restar();
  
}

class Operacion{
  double? num1;
  double? num2;
  
  double sumar(){
    double sum = num1! + num2!;
    return sum;
    
  }
  
  double multiplicar(){
    double mul = num1! * num2!;
    return mul;
  }
  
  void restar(){
    double res = num1! - num2!;
    print (res);
    
  }
}
~~~
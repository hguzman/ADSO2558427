~~~

void main(){
  Operacion operacion = Operacion(); 
  operacion.num1 = 6.0; 
  operacion.num2 = 10.0;
  print('La suma es : ${operacion.suma()}');
  operacion.resta();
  print('La multiplicación es : ${operacion.multiplicacion()}');
}
class Operacion{
  double? num1; 
  double? num2;
  
  double suma(){
    double s = num1! + num2!;
    return s;
    
  }
  void resta(){
    double r = num1! - num2!;
    print('La resta es: $r');
      
  }
  double multiplicacion(){
    double m = num1! * num2!;
    return m;
    
  }
}

~~~
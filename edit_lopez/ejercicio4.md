~~~~

void main() {
 
 Operacion operacion = new Operacion();
  operacion.num1 = 5.0; 
  operacion.num1 = 4.0;
  
  print('la suma es:${operacion.sumar()}');
  operacion.restar();
  print('la multiplicacion es:${operacion.multiplicar()}');
  
    }
class Operacion{
  double? num1;
  double? num2;
  
  double sumar(){
    double u = num1! + num2!;
    return u;
    
  }
  
  void restar(){
    double t = num1! - num2!;
    print('la resta es $t');
    
  }
  
  double multiplicar(){
    double p = num1! * num2!;
    return p;
  }
}



~~~~
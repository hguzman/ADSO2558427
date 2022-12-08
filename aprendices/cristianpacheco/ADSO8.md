```
void main() {
  Operacion operacion = new Operacion();
  operacion.num1=3.0;
  operacion.num2=4.0;
  
  print ('la suma es: ${operacion.sumar()}');
  operacion.restar();
  print('la multiplicacion es:${operacion.multiplicar()}');
  }
class Operacion{
 
  double? num1;
  double? num2;
  
  double sumar (){
    double x= num1!+num2!;
    return x;
  }
  void restar(){
    double q= num1!-num2!;
    print('la suma es: $q');
  }
  double multiplicar(){
    double r= num1!*num2!;
    return r;
  }
}
´´´
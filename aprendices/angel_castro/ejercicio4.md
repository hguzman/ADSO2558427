~~~ 

void main() {
  Operacion operacion = new Operacion();
  operacion.num1 = 3.0;
  operacion.num2 = 4.0;
  print('la suma es : ${operacion.suma()}');
  operacion.resta();
  print('el resultado de la multiplicacion es: ${operacion.multiplicacion()}');
  
  
 }
class Operacion{
  double? num1;
  double? num2;  
  
  
  double suma(){
    double sma = num1! + num2!;
    return sma;
  }
  void resta(){ 
    double rsta = num1! - num2!; 
    print('el rsultado de la resta es : $rsta'); 
  }
  double multiplicacion(){
    double multi = num1! * num2!;
    return multi;
  
}
}

~~~ 
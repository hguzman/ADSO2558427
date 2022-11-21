## Camilo lafaurie
## ejercicio de dart 

~~~
void main() {
  Operacion operacion = new Operacion();
  operacion.num1 = 10.0;
  operacion.num2 = 4.0;
  print('La suma es ${operacion.sumar()}');
  print('La multiplicación es ${operacion.multiplicar()}');
  operacion.restar();
}
class Operacion {
  double? num1;
  double? num2;
  double sumar() {
    double s = num1! + num2!;
    return s;
  }
  double multiplicar() {
    double m = num1! * num2!;
    return m;
  }
  void restar() {
    double r = num1! - num2!;
    print('La resta es $r');
  }
}
~~~
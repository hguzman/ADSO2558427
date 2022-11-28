# ALgoritmo Dart, Objetos, clases y Metodos

~~~
void main() {
  Operaciones operacion = new Operaciones();
  operacion.num1 = 30.0;
  operacion.num2 = 15.0;
  print('El total de la suma es: ${operacion.sumar()}');
  print('El total de la multiplicación es: ${operacion.multiplicar()}');
  operacion.restar();
}
class Operaciones {
  double? num1;
  double? num2;
  
  double sumar() {
    double sum = num1! + num2!;
    return sum;
  }
  double multiplicar() {
    double mul = num1! * num2!;
    return mul;
  }
  void restar() {
    double res = num1! - num2!;
    print('El total de la resta es: $res');
  }
}
~~~
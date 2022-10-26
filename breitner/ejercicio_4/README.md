## Ejercicio de dartpad
~~~

void main() {
  Operacion operacion = new Operacion();

  operacion.num1 = 3.4;
  operacion.num2 = 5.7;

  print(operacion.sumar());
  operacion.resta();
  print(operacion.multi());
}

class Operacion {
  double? num1;
  double? num2;

  double sumar() {
    double m = num1! + num2!;
    return m;
  }

  void resta() {
    double r = num1! - num2!;
    print(r);
  }

  double multi() {
    double mul = num1! * num2!;
    return mul;
  }
}
~~~

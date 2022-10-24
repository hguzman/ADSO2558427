 - EJERCICIO DART PAD
~~~
 void main() {
  
  Operacion operacion = new Operacion();

  operacion.numero1;

  operacion.numero2;

  print("la suma es: ${operacion.sumar()}");

  operacion.restar();

  print("la multiplicacion es: ${operacion.multiplicar()}");

}

class Operacion {

  double numero1 = 20.0;

  double numero2 = 10.0;

  double? sumar() {

    double s = numero1 + numero2;

    return s;

  }

  void restar() {

    double r = numero1 - numero2;

    print("la resta es: $r");

  }

  double? multiplicar() {

    double m = numero1 * numero2;

    return m;

  }

}
~~~

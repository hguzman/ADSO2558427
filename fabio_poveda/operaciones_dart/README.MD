# Objetos, clases, y métodos en Dart

~~~
void main() {
  Operacion operacion = new Operacion();
  operacion.num1 = 2.0;
  operacion.num2 = 4.0;
  print ('El resultado de la suma es: ${operacion.sumar()}');
  operacion.restar();
  print ('El resultado de la suma es: ${operacion.multiplicar()}');
}

class Operacion{
  double? num1;
  double? num2;
  
  double sumar(){
    double s = num1! + num2!;
    return s;
  }
  void restar(){
    double r = num1! - num2!;
    print ('La resta es $r');
  }
  double multiplicar(){
    double m = num1! * num2!;
    return m;
  }
}
~~~

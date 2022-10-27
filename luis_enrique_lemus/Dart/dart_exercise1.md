## Dart, Objetos, clases y Metodos

~~~~


void main() {
  
  Operaciones operacion = new Operaciones();
  operacion.num1 = 4.0;
  operacion.num2 = 3.0;
  
  print('La suma es : ${operacion.sumar()}');
  operacion.resta();
  print('La multiplicación es : ${operacion.multiplicar()}');
}

class Operaciones{
  double? num1;
  double? num2;
  
  double? sumar(){
    double s = num1! + num2!;
    return s;
  }
  
  void resta(){
    double r = num1! - num2!;
    print("El resultado es; $r");
  }
  
  double? multiplicar(){
    double m = num1! * num2!;
    return m;
  }
}

~~~~
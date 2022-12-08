### clases, objetos y metodos

~~~~
void main() {
  
  Operaciones operacion = Operaciones();
  operacion.num1 = 6.0;
  operacion.num2 = 7.0;
  
  print('La suma es : ${operacion.sumar()}');
  operacion.resta();
  print('La multiplicación es : ${operacion.multiplicar()}');
}

class Operaciones{
  double? num1;
  double? num2;
  
  double? sumar(){
    double sm = num1! + num2!;
    return sm;
  }
  
  void resta(){
    double rs = num1! - num2!;
    print("El resultado es: $rs");
  }
  
  double? multiplicar(){
    double mt = num1! * num2!;
    return mt;
  }
}
~~~~
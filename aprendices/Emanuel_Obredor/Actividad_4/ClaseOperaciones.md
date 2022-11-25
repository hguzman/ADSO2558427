# Clase Operaciones
```
class Operacion{
  double? num1;
  double? num2;
  
  double suma(){
    num1 = 2.0;
    num2 = 7.0;
    double resultado1 = num1! + num2!;
    return resultado1;
  } 
  
  double multiplicacion(){
    num1 = 2.0;
    num2 = 7.0;
    double resultado3 = num1! * num2!;
    return resultado3;
  }
  
  void resta(){
    num1 = 2.0;
    num2 = 7.0;
    double resultado2 = num1! - num2!;
    print('El resultado de la resta es: $resultado2');
  }
}
void main() {
  Operacion operacion = Operacion();
  print('El resultado de la suma es: ${operacion.suma()}');
  operacion.resta();
  print('El resultado de la multiplicación es: ${operacion.multiplicacion()}');
}
``` 
# Wilmer Carmona

~~~

void main() { 

 Operacion operacion = new Operacion();
 operacion.nume1 = 5.0;
  operacion.nume2 = 5.0;
  print('la suma es: ${operacion.sumar()}');
  operacion.restar();
  print('la multiplicacion es: ${operacion.multiplicar()}');
 
}

class Operacion{
 double? nume1;
 double? nume2;
 
  double sumar(){
    double sumar = nume1! + nume2!; 
   return sumar; 
  }
      
  void restar(){
    double c = nume1! - nume2!;
    print('la resta es: $c');
  }
    
    double multiplicar(){
      double multiplicar = nume1! * nume2!;
      return multiplicar;
}
}

~~~

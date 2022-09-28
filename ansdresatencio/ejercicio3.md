void main() {
  Operacion b = new Operacion();
  b.nume1 =3.0;
  b.nume2=5.8;
  print("la suma es:${b.sumar()}");
  (b.restar());
  print("la multiplicacion es:${b.multiplicar()}");
  
        
}
class Operacion{
  double? nume1;
  double? nume2;
  
double sumar(){
  double b = nume1!+nume2!;
return b;
} 
  void restar(){
  double x =nume1! - nume2!;
  print("la resta es;$x");  
}
double multiplicar() {
  double v = nume1! * nume2!;
  return v;
  
} 
}
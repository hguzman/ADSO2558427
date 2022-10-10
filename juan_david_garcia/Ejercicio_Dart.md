```
void main() {
  Operacion a = new Operacion();
  a.num1= 5.0;
  a.num2= 2.0;
  print("La suma es: ${a.sumar()}");
  (a.restar)();
  print("La multiplicacion es: ${a.multiplicar()}");

}
class Operacion{
  double? num1;
  double? num2;
double sumar() {
  double m = num1! + num2!;
  return m;
}
void restar() {
  double s = num1! - num2!;
  print("La resta es: $s");
}
double multiplicar() {
  double f = num1! * num2!;
  return f;

}
}
```
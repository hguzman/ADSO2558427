```
void main() {
 Operacion z = new Operacion();

 z.number1 = 9.0;  
 z.number2 = 8.0;
  print("la suma es:${z.sumar()}");       
   (z.restar)();
 print("la multiplicacion es:${z.multiplicar()}");      



}
class Operacion{
  double? number1;
   double? number2; 
    double sumar(){
  double x = number1! + number2!;
  return x;
}     
  
 void restar(){
   void p = number1! - number2!;
   return p;
 }
   
 double multiplicar(){
   double c = number1! * number2!;
    return c;
 }
 ```
  ```
void main() {
 Operacion z = new Operacion();

 z.number1 = 9.0;  
 z.number2 = 8.0;
  print("la suma es:${z.sumar()}");       
   (z.restar)();
 print("la multiplicacion es:${z.multiplicar()}");      



}
class Operacion{
   double? number1;
    double? number2; 
     double sumar(){
      double x = number1! + number2!;
  return x;
}     
  
 void restar(){
    void p = number1! - number2!;
     return p;
 }
   
 double multiplicar(){
   double c = number1! * number2!;
    return c;
 }

 ```

```
void main() { 
    Leon leon = Leon(); 
      Paloma paloma = Paloma(); 
      Perro perro = Perro(); 
     leon.emitirSonido(); 
    paloma.emitirSonido(); 
   perro.emitirSonido(); 
  perro.nombre = ("white"); 
 print(perro.nombre); 
  Carnivoro.imc(20,8); 
  
  
 } 
   abstract class Animal{ 
    void emitirSonido(); 
 } 
   class Carnivoro{ 
    String? nombre; 
  
    static void imc(int altura, int peso){ 
      int calcularImc = altura * peso; 
       print ("La masa muscular calculada es es: $calcularImc"); 
  } 
 } 
    class Leon implements Animal{ 
      void emitirSonido(){ 
       print("el leon hace: raghhh"); 
  
   }
 } 
    class Paloma implements Animal{ 
      void emitirSonido(){ 
       print("la paloma hace: ruuuuu"); 
   } 
 } 
    class Perro extends Carnivoro implements Animal {  
      void emitirSonido(){ 
       print("El perro hace: wauuuuu"); 
  } 
 } 
 
 ```
 
  
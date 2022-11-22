```
void main(){
  
  Gato gato = Gato();
  gato.emitirsonido();
  
  Vaca vaca = Vaca();
  vaca.emitirsonido();
  
  Perro perro = Perro();
  perro.emitirsonido();
  perro.nombre = 'Hela';
  print (perro.nombre);
  Carnivoro.imc(35, 10);    
}

abstract class Animal {
  void emitirsonido (); 
}

class Gato implements Animal{
 @override
  void emitirsonido(){
    print ('Gato miauu');
  } 
} 
class Vaca implements Animal{
 @override
  void emitirsonido(){
    print ('Vaca Muuu');
  }
}

class Carnivoro {
  String? nombre;
  
  static void imc(int altura, int peso){
    int calcularimc = peso * altura;
  print ('imc es igual a $calcularimc');
  }
}
class Perro extends Carnivoro implements Animal{
  @override
 void emitirsonido() {
   print ('Perro Guaau');
 }
}
```
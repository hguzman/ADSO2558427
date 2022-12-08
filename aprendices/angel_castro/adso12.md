~~~
void main() {
 
  Gato gato = Gato();
  gato.emitirSonidos();
  
  Vaca vaca = Vaca();
  vaca.emitirSonidos();
  
  Perro perro = Perro();
  perro.emitirSonidos();
  perro.nombre = "camilo";
  print(perro.nombre);
  
  Carnivoro.imc(8,9);  
}
abstract class Animal{ 
 void emitirSonidos ();
}
class Gato implements Animal{ 
  @override 
 void emitirSonidos (){ 
   print('el sonido del gato es: miau');
 }
} 
class Vaca implements Animal{ 
   @override
 void emitirSonidos (){ 
   print('el sonido de la vaca es: muu');
 }
}
class Perro extends Carnivoro implements Animal{ 
 void emitirSonidos (){ 
   print('el sonido que hace el perro es: gua');
 }
} 
class Carnivoro{ 
 String? nombre;
 static void imc (int altura, int peso){ 
   print(altura*peso);
 }
}
~~~
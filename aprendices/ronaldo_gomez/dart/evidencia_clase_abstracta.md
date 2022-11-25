## ALgoritmo de clase abstracta y metodo estatico

~~~
void main(){
	  Vaca vaca1 = Vaca();
	  Gato gato2 = Gato(); 

	  Perro perro3 = Perro();
	  perro3.nombre = "ROCKO";

	  print("Sonido de los animales"); 
		vaca1.emitirSonido();
		gato2.emitirSonido();
		perro3.emitirSonido();

	  print("El IMC (indice de masa corporal) del perro ${perro3.nombre} es de:");
	  Carnivoro.imc(37,6); 
	}
	abstract class Animal{
	  void emitirSonido(); 
	}
	class Carnivoro{
	  String? nombre;
	  static void imc (a, b) => print (a * b);
	}
	class Vaca implements Animal{
	    @override 
	  void emitirSonido() => print ("La vaca suena MUUUUUUUUU"); 
	}
	class Gato implements Animal{
	    @override
	   void emitirSonido() => print("El gato suena MIAUUUUUU");
	}
	class Perro extends Carnivoro implements Animal{
	  @override
	  void emitirSonido() => print("El perro suena GUAU GUAU"); 
	}
~~~
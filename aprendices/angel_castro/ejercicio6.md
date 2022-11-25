~~~
void main(){
  
  Conejo conejo = Conejo();
  
  conejo.nombre = 'conejo';
  conejo.edadPromedio = 6;
  conejo.reproduccion = 'sexual';
  conejo.alimento = 'zanahoria, lechuga';
  conejo.bioma = 'bosques';
  Leon leon = Leon();
  
  leon.nombre = 'leon';
  leon.edadPromedio = 10;
  leon.reproduccion = 'sexual';
  leon.alimento = 'antilopes, bufalos';
  leon.bioma = 'sabanas';
  Hiena hiena = Hiena(); 
  
  hiena.nombre = 'hiena';
  hiena.edadPromedio = 20;
  hiena.reproduccion = 'sexual';
  hiena.alimento = 'serpientes, lagartos';
  hiena.bioma = ' sabana, matorrales y desierto.';
  Hombre hombre = Hombre();
  
  hombre.nombre = 'hombre';
  hombre.edadPromedio = 66;
  hombre.reproduccion = 'sexual';
  hombre.alimento = 'carnes, vegetales';
  hombre.bioma = 'terrestres, vegetacion';
  print("""
  animal 1
  El nombre del conejo es : ${conejo.nombre}.
  El promedio del conejo es: ${conejo.edadPromedio} años. 
  El tipo de reproduccion del conejo es: ${conejo.reproduccion}.
  Se alimenta de: ${conejo.alimento}.
  los conejos habitan en los: ${conejo.bioma}.
  animal 2 
  El nombre es: ${leon.nombre}.
  La edad promedio es: ${leon.edadPromedio} años. 
   El tipo de reproduccion del leon es: ${leon.reproduccion}.
  s Los leones e alimenta de: ${leon.alimento}.
  los leones habitan en: ${leon.bioma}
  animal 3
  El nombre es: ${hiena.nombre}.
  La edad promedio es: ${hiena.edadPromedio} años. 
   El tipo de reproduccion de la hiena es : ${hiena.reproduccion}.
  Las hienas se alimenta de: ${hiena.alimento}.
  las hienas  habitan en: ${hiena.bioma}
  animal 4
  El nombre es: ${hombre.nombre}.
  La edad promedio es: ${hombre.edadPromedio} años. 
  El tipo de reproduccion del hombre es: ${hombre.reproduccion}.
  El hombre se alimenta de: ${hombre.alimento}.
  el hombre habita en: ${hombre.bioma}
  """);
  
  
}

class Animal{
  String? nombre;
  int? edadPromedio;
  String? reproduccion;
  String? alimento;
  String? bioma;
}
class Hervivoro extends Animal{
  String tipo = 'Hervivoro';
}
class Conejo extends Hervivoro{}
class Carnivoro extends Animal{
  String tipo = 'Carnivoro';
  
}
class Leon extends Carnivoro{}
class Hiena extends Carnivoro{}
class Omnivoro extends Animal{
  String? tipo = 'Omnivoro';
}
class Hombre extends Omnivoro{}
~~~

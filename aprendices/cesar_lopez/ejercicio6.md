```
void main(){
  
  Hiena hiena = Hiena(); 
  
  hiena.nombre = 'hiena';
  hiena.edadPromedio = 25;
  hiena.alimento = 'lagartos';
  
  Conejo conejo = Conejo();
  
  conejo.nombre = 'conejo';
  conejo.edadPromedio = 9;
  conejo.alimento = 'zanahoria';
  
  Leon leon = Leon();
  
  leon.nombre = 'leon';
  leon.edadPromedio = 15;
  leon.alimento = 'carne';
  
  
  Hombre hombre = Hombre();
  
  hombre.nombre = 'hombre';
  hombre.edadPromedio = 72;
  hombre.alimento = 'vegetales, frutas, carnes';
  
  print("""
  animal 1
  El nombre es: ${conejo.nombre}.
  La edad promedio es: ${conejo.edadPromedio} años. 
  Se alimenta de: ${conejo.alimento}.
  
  animal 2 
  El nombre es: ${leon.nombre}.
  La edad promedio es: ${leon.edadPromedio} años. 
  Se alimenta de: ${leon.alimento}.
  
  animal 3
  El nombre es: ${hiena.nombre}.
  La edad promedio es: ${hiena.edadPromedio} años.
  Se alimenta de: ${hiena.alimento}.
  
  animal 4
  El nombre es: ${hombre.nombre}.
  La edad promedio es: ${hombre.edadPromedio} años. 
  Se alimenta de: ${hombre.alimento}.
  """);
  
  
}

class Animal{
  String? nombre;
  int? edadPromedio;
  String? alimento;
  
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
```
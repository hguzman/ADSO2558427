```
void main(){
  
  Conejo conejo = new Conejo();
  
  conejo.nombre = 'conejo';
  conejo.edadPromedio = 9;
  conejo.tiporepro = 'sexual';
  conejo.alimento = 'zanahoria, lechuga';
  
  Leon leon = new Leon();
  
  leon.nombre = 'leon';
  leon.edadPromedio = 15;
  leon.tiporepro = 'sexual';
  leon.alimento = 'antilopes, bufalos';
  
  Hiena hiena = new Hiena(); 
  
  hiena.nombre = 'hiena';
  hiena.edadPromedio = 25;
  hiena.tiporepro = 'sexual';
  hiena.alimento = 'serpientes, lagartos';
  
  Hombre hombre = new Hombre();
  
  hombre.nombre = 'hombre';
  hombre.edadPromedio = 72;
  hombre.tiporepro = 'sexual';
  hombre.alimento = 'carnes, vegetales, frutas, cereales';
  
  print("""
  animal 1
  El nombre es: ${conejo.nombre}.
  La edad promedio es: ${conejo.edadPromedio} anos. 
  Su tipo de reproduccion es: ${conejo.tiporepro}.
  Se alimenta de: ${conejo.alimento}.
  
  animal 2 
  El nombre es: ${leon.nombre}.
  La edad promedio es: ${leon.edadPromedio} anos. 
  Su tipo de reproduccion es: ${leon.tiporepro}.
  Se alimenta de: ${leon.alimento}.
  
  animal 3
  El nombre es: ${hiena.nombre}.
  La edad promedio es: ${hiena.edadPromedio} anos. 
  Su tipo de reproduccion es: ${hiena.tiporepro}.
  Se alimenta de: ${hiena.alimento}.
  
  animal 4
  El nombre es: ${hombre.nombre}.
  La edad promedio es: ${hombre.edadPromedio} anos. 
  Su tipo de reproduccion es: ${hombre.tiporepro}.
  Se alimenta de: ${hombre.alimento}.
  """);
  
  
}

class Animal{
  String? nombre;
  int? edadPromedio;
  String? tiporepro;
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
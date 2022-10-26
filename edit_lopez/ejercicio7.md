ejercicio herencia

~~~~
void main(){
  Camello camello = Camello();
  camello.nombre = 'camello';
  camello.comida = 'millo';
  camello.edadprome = 40;
  camello.tipreproductor = 'sexual';
  print("""
  su nombres es:
  ${camello.nombre}
  su comida:
  ${camello.comida} 
  edad promedio:
  ${camello.edadprome}
  tipo repro:
  ${camello.tipreproductor}
  """);
  Tigre tigre = Tigre();
  tigre.nombre = 'tigre';
  tigre.comida = 'cebra';
  tigre.edadprome = 8;
  tigre.tipreproductor = 'sexual';
  print("""
  su nombre es:
  ${tigre.nombre}
  su comida:
  ${tigre.comida}
  edad promedio:
  ${tigre.edadprome}
  tipo repro:
  ${tigre.tipreproductor}
  """);
  Hombre hombre = Hombre();
  hombre.nombre = 'thiago';
  hombre.comida = 'pollo,banano,arroz';
  hombre.edadprome = 95;
  hombre.tipreproductor = 'sexual';
  print("""
  su nombre es: 
  ${hombre.nombre}
  su comida:
  ${hombre.comida}
  edad promedio:
  ${hombre.edadprome}
  tipo repro:
  ${hombre.tipreproductor}
  """);
  }
class Animal{
  String? nombre;
  String? comida;
  int? edadprome;
  String? tipreproductor;
}       
class Herviboro extends Animal{
  String  tip = 'herviboro';
}  
class Camello extends Herviboro{
}
class Carnivoro extends Animal{
  String tip = 'carnivoro';
}
class Tigre extends Carnivoro{
}
class Omnivoro extends Animal{
  String tip = 'omnivoro';
}
class Hombre extends Omnivoro{
}
~~~~
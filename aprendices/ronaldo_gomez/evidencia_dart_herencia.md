# Algoritmo Dart Herencia animal
~~~

void main() {
 Conejo conejo = new Conejo();
 conejo.nombre = "(Conejo)";
 conejo.alimento = "(heno, verduras y frutas)"; 
 conejo.peso = 1.25; 
 print("""
 El nombre del animal es: ${conejo.nombre} 
 Se alimeta de: ${conejo.alimento} 
 Su peso promedio es de: ${conejo.peso}
 """);
   
 Leon leon = new Leon();
 leon.nombre = "(Leon)";
 leon.alimento = "(ñúes, impalas y otros antílopes, cebras, jirafas, búfalos y también carroña)"; 
 leon.peso = 190; 
 print("""
 El nombre del animal es: ${leon.nombre}
 Se alimeta de: ${leon.alimento} 
 Su peso promedio es de: ${leon.peso}
 """);
 
 Hiena hiena = new Hiena();
 hiena.nombre = "(Hiena)";
 hiena.alimento = "(carne y carroña)"; 
 hiena.peso = 150; 
 print("""
 El nombre del animal es: ${hiena.nombre} 
 Se alimeta de: ${hiena.alimento} 
 Su peso promedio es de: ${hiena.peso}
 """);
   
 Hombre hombre = new Hombre();
 hombre.nombre = "(Hombre)";
 hombre.alimento = "(carne, frutas y verduras)"; 
 hombre.peso = 86; 
 print("""
 El nombre es: ${hombre.nombre}
 Se alimeta de: ${hombre.alimento} 
 Su peso promedio es de: ${hombre.peso}
 """);

}
class Animal{
String? nombre;
}
class Herbivoro extends Animal{
String? alimento;  
}
class Carnivoro extends Animal{
String? alimento;  
}
class Omnivoro extends Animal{
String? alimento;  
}
class Conejo extends Herbivoro{
double? peso;  
}
class Leon extends Carnivoro{
double? peso;  
}
class Hiena extends Carnivoro{
double? peso;  
}
class Hombre extends Omnivoro{
double? peso;  
}

~~~
```
void main() {
 Conejo conejo = Conejo();
 conejo.nombre = "Conejo";
 conejo.alimento = "heno, verduras y frutas"; 
 conejo.peso = 2.3; 
 print("""
 El nombre es: ${conejo.nombre} 
 Se alimeta de: ${conejo.alimento} 
 Su peso promedio es de: ${conejo.peso}
 """);
   
 Leon leon = Leon();
 leon.nombre = "Leon";
 leon.alimento = "ñúes, impalas y otros antílopes, cebras, jirafas, búfalos y también carroña"; 
 leon.peso = 192; 
 print("""
 El nombre es: ${leon.nombre}
 Se alimeta de: ${leon.alimento} 
 Su peso promedio es de: ${leon.peso}
 """);
 
 Hiena hiena = Hiena();
 hiena.nombre = "Hiena";
 hiena.alimento = "carne y carroña"; 
 hiena.peso = 150; 
 print("""
 El nombre es: ${hiena.nombre} 
 Se alimeta de: ${hiena.alimento} 
 Su peso promedio es de: ${hiena.peso}
 """);
   
 Hombre hombre = Hombre();
 hombre.nombre = "Hombre";
 hombre.alimento = "carne, frutas y verduras"; 
 hombre.peso = 80; 
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
```

```
void main(){
  
 
    Animal_acuatico animal= new Animal_acuatico(nom:"mojarra",tda:"hervivoro",na:3);
    animal.codigo();
    Animal_terrestre animal2= new Animal_terrestre(nom:"tigre",tda:"carnivoro",np:4);
    animal2.codigo();
    Animal_aereo animal3= new Animal_aereo(nom:"aguila",tda:"carnivoro",nal:2);
    animal3.codigo();
  
  
  
}
class Animal{
  String? nombre;
  String? tipo_de_alimento;
}
class Animal_acuatico extends Animal{
    int? num_aletas;
  
    Animal_acuatico({String? nom, String? tda,int? na}){
        nombre=nom;
        tipo_de_alimento=tda;
        num_aletas=na;
    }
   void codigo(){
    print("el numero de aletas: $num_aletas");
    print("el es un animal: $tipo_de_alimento");
    print("el nombre del animal es: $nombre");
    print("");
  }
}
class Animal_terrestre extends Animal{
  int? num_patas;
  
  Animal_terrestre({String? nom, String? tda,int? np}){
    nombre=nom;
    tipo_de_alimento=tda;
    num_patas=np;
  }
    void codigo(){

    print("el numero de patas: $num_patas");
    print("el es un animal: $tipo_de_alimento");
    print("el nombre del animal es: $nombre");
    print("");
  }
}
class Animal_aereo extends Animal{
  int? num_alas;
  
  Animal_aereo({String? nom, String? tda,int? nal}){
    nombre=nom;
    tipo_de_alimento=tda;
    num_alas=nal;
  }
    void codigo(){
    print("el numero de patas: $num_alas");
    print("el es un animal: $tipo_de_alimento");
    print("el nombre del animal es: $nombre");
    print("");
  }
  
}
```
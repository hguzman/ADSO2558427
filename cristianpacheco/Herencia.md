```
void main(){
  List paises=["EE.UU","ucrania","japon","egipto","china"];
  List presidentes=["daniel","camilo","miguel","bryan","orlando"];
  List numero_de_atencion=[01181917812,62827828,6383684,73837849,1782739];
  List numero_de_empleados=[3000,4000,2300,6400,5600];
  
  for(int i=1;i<6;i++){
     print("----------------------------------------");
     print("empresa #$i");
    Empresa1 empresa= new Empresa1.d(p:paises[i-1],pre:presidentes[i-1],num1:numero_de_atencion[i-1],num2:numero_de_empleados[i-1]);
     print("----------------------------------------");
     print("");
  }
}
class Empresas{
  String? pais;
  String? presidente;
  int? numero;
 
  }

class Empresa1 extends Empresas{
  int? numero_empleados;
   
  Empresa1.d({String? p,String?pre,int? num1,int? num2} ){
   pais= p;
   presidente= pre;
   numero= num1;
   numero_empleados=num2;
  
   print("la empresa esta ubicada en: $p");
   print("esta empresa esta ditigida por: $pre");
   print("el numero de atencion al cliente es: $num1");
   print("esta empresa cuenta con unos: $num2 empleados");
  
  } 
 }
 ```
 

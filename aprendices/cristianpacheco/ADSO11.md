```
void main(){
  List paises=["EE.UU","ucrania","japon","egipto","china"];
  List presidentes=["daniel","camilo","miguel","bryan","orlando"];
  List numero_de_atencion=[01181917812,62827828,6383684,73837849,1782739];
  List numero_de_empleados=[3000,4000,2300,6400,5600];
  
  for(int i=1;i<6;i++){
     print("----------------------------------------");
     print("empresa #$i");
    Empresa empresa= new Empresa(p:paises[i-1],pre:presidentes[i-1],num1:numero_de_atencion[i-1],num2:numero_de_empleados[i-1]);
     print("codigo: ${empresa.generar_codigo()}");
     empresa.cantidad_de_caracteres();
     print("----------------------------------------");
     print("");
  }
}
class Empresa{
  String? pais;
  String? presidente;
  int? numero;
  int? numero_empleados;
   
  Empresa({String? p,String?pre,int? num1,int? num2}){
   pais= p;
   presidente= pre;
   numero= num1;
   numero_empleados=num2;
  } 
  String generar_codigo()=>pais!.substring(0,2)+presidente!.substring(0,3)+numero.toString().substring(0,4)+numero_empleados.toString().substring(0,3);
 
  void cantidad_de_caracteres(){
   int cantidad_pais=pais!.length;
   int cantidad_presidente=presidente!.length;
   int cantidad_numero= numero.toString().length;
   int cantidad_numero_empleados=numero_empleados!.toString().length;
   print("----------------------------------------");
   print("cantidad de caracteres:");
   print("  pais: $cantidad_pais");
   print("  presidente: $cantidad_presidente");
   print("  numero de contacto:$cantidad_numero");
   print("  numero de emoleados: $cantidad_numero_empleados");
    
  }
 }
 ```
 

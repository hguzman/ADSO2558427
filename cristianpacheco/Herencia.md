´´´
void main(){
  Empresa1 riot= new Empresa1.d(p:"EE.UU",pre:"Nicolo Laurent",num1:018000,num2:5600);
  
   
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
    
    print("la empresa esta ubicada en $p");
    print("esta empresa esta ditigida por $pre");
    print("el numero de atencion al cliente es: $num1");
    print("esta empresa cuenta con unos: $num2 empleados");

  } 
 }
 ´´´

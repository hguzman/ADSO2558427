dart empresa
~~~~
void main(){
  Empresa empresa2 = Empresa(pais:'guatemala',numero: 5678,oficina:'norte');
  Empresa empresa3 = Empresa(pais:'honduras',numero:9085,oficina:'centro');
  
 print("""
 empresa 2: 
 pais: ${empresa2.pais}
 numero: ${empresa2.numero}
 oficina: ${empresa2.oficina}
 
 codi: ${empresa2.generacodigo()}
 """);
  
   empresa2.cantcaracter();
  
  print("""
  empresa 3:
  pais: ${empresa3.pais}
  numero: ${empresa3.numero}
  oficina: ${empresa3.oficina}
  
  codi: ${empresa3.generacodigo()}
  """);    
      
  empresa3.cantcaracter();  
}

class Empresa{
  String? pais,oficina;
  int? numero;
  
  Empresa({this.pais,this.numero,this.oficina});
String generacodigo(){
  String? codi = pais!.substring(0,4)+numero!.toString().substring(0,3)+oficina!.substring(oficina!.length -3);
  return codi;
    }
      
    void cantcaracter(){
      int cants = pais!.length;
      int cantm = numero!.toString().length;
      int cantf = oficina!.length;
      
      print("""
      cantcaracter:
      pais: $cants
      numero: $cantm
      oficina: $cantf
      """);
      
      
    }  
  }
  ~~~~
```
void main(){
 
 Empresa empresa1 = new Empresa(numero: 2545, oficina: 'Nestlé', pais: 'Panama');
 Empresa empresa2 = new Empresa(oficina: 'Luxottica', pais: 'Italia', numero: 1245);
 Empresa empresa3 = new Empresa(pais: 'Espana', numero: 2365, oficina: 'INDITEX');
  
 print("""
 Empresa 1:
 
 Pais: ${empresa1.pais}
 Numero: ${empresa1.numero}
 Oficina: ${empresa1.oficina}
 Codigo: ${empresa1.generarCodigo()}
 """);
 empresa1.cantCaracteres();
  
 print("""
 Empresa 2: 
 
 Pais: ${empresa2.pais}
 Numero: ${empresa2.numero}
 Oficina: ${empresa2.oficina}
 Codigo: ${empresa2.generarCodigo()}
 """);
 empresa2.cantCaracteres();
 
 print("""
 Empresa 3:
 
 Pais: ${empresa3.pais}
 Numero: ${empresa3.numero}
 Oficina: ${empresa3.oficina}
 """);
 empresa3.cantCaracteres();
}
class Empresa{
  String? pais, oficina;
  int? numero;
  
  Empresa({this.numero, this.oficina, this.pais});
String generarCodigo(){
 String? cod = pais!.substring(0,3) + numero!.toString().substring(0,2) + oficina!.substring(oficina!.length - 3);
 return cod;
}
void cantCaracteres(){
  int cantP = pais!.length;
  int cantN = numero!.toString().length;
  int cantO = oficina!.length;
 print("""
 Cantidad de caracteres: 

 Pais: $cantP
 Numero: $cantN
 Oficina: $cantO
""");
}
}
```
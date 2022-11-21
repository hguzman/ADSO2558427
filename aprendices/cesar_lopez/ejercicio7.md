```
void main(){
 
 Empresa empresa1 = new Empresa(numero: 301615, oficina: 'América Móvil', pais: 'mexico');
 Empresa empresa2 = new Empresa(oficina: 'Alcan', pais: 'canada', numero: 15301);
 Empresa empresa3 = new Empresa(pais: 'australia', numero: 71003, oficina: 'HealthLinx');
  
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
 String? codigo = pais!.substring(0,3) + numero!.toString().substring(0,3) + oficina!.substring(oficina!.length - 3);
 return codigo;
}
void cantCaracteres(){
  int cantPais = pais!.length;
  int cantNumero = numero!.toString().length;
  int cantOficina = oficina!.length;
 print("""
 Cantidad de caracteres: 

 Pais: $cantPais
 Numero: $cantNumero
 Oficina: $cantOficina
""");
}
}
```
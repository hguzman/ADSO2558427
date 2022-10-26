```
void main() {
Empresa empresa = Empresa(pais: 'Colombia', numero: 90142, oficina: 'la trinidad');
Empresa empresaB = Empresa(pais: 'Mexico', numero: 44117, oficina: 'Monterrey');

print("""
Pais: ${empresa.pais}.
 numero: ${empresa.numero}.
oficina: ${empresa.oficina}.

Codigo: ${empresa.generarCodigo()}.

""");

print(""" 
Pais: ${empresaB.pais}.
 numero: ${empresaB.numero}.
oficina: ${empresaB.oficina}.

Codigo: ${empresaB.generarCodigo()}.
""");

 
}

class Empresa{
String? pais, oficina;
int? numero;
  
Empresa({this.pais, this.numero, this.oficina});
 

String? generarCodigo (){
  String? paisx = pais!.substring(0, 3);
   int? cantOfi = oficina?.length;
  int? posOfi = cantOfi! - 3;
  String? ofi = oficina!.substring(posOfi,cantOfi);
  String? numerotostr = numero.toString();
  String? num = numerotostr.substring(0, 3);
  String? codigo = '$paisx$num$ofi';
  return codigo;
    

}      
void canCaracteres(){   
 int cantPais = pais!.length; 
 int cantOfi = oficina!.length;
String? convNum = numero.toString();
int cantNum = convNum.length;
print("""
la cantidad de caracteres son: $cantOfi
los caracteres de el pais son: $cantPais
la cantidad de caracteres de los numeros: $cantNum

""");
}
}
```

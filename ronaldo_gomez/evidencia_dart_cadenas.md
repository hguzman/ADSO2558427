# Algortimo manejo de cadenas

~~~

void main(){
  
  Empresa empresa1 = Empresa(pais:'venezuela',numero:712356,oficina:'central');
  Empresa empresa2 = Empresa(pais:'Argentina',numero: 23945675,oficina:'central');
  Empresa empresa3 = Empresa(pais:'brasil',numero: 23457678,oficina:'central');

  print("""
  EMPRESA #1
  Pais: ${empresa1.pais}.
  Identificacion: ${empresa1.numero}.
  Sede de la oficina: ${empresa1.oficina}.
    
  Codigo: ${empresa1.generarCodigo()}.
""");
  empresa1.cantCaracteres();

  print("""
  EMPRESA #2
  Pais: ${empresa2.pais}.
  Identificacion: ${empresa2.numero}.
  Sede de la ficina: ${empresa2.oficina}.
    
  Codigo: ${empresa2.generarCodigo()}.
""");
  
  empresa2.cantCaracteres();
  
    print("""
  EMPRESA #3
  Pais: ${empresa3.pais}.
  Identificacion: ${empresa3.numero}.
  Sede de la ficina: ${empresa3.oficina}.
    
  Codigo: ${empresa3.generarCodigo()}.
""");
  empresa3.cantCaracteres();
}
class Empresa{
  String? pais, oficina;
  int? numero;
Empresa({this.pais, this.numero, this.oficina});
String? generarCodigo(){
  String? paisA = pais!.substring(0,3);
  int? cantOfic = oficina?.length;
  int? posOfi = cantOfic! - 3;
  String? ofic = oficina!.substring(posOfi, cantOfic);
  String? numtostr = numero.toString();
  String? num = numtostr.substring(0,3);
  String? cod = '$paisA$num$ofic';
  return cod;
}
void cantCaracteres(){
  int cantPais = pais!.length;
  int cantOfic = oficina!.length;
  String? convNum = numero.toString();
  int cantNum = convNum.length;
  print("""
  |Los caracteres de la oficina son: $cantOfic |
  |Los caracteres de el pais: $cantPais        |
  |Los caracteres de los numeros: $cantNum    |
  
""");
}
}

~~~
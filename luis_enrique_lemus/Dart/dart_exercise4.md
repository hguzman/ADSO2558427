## Manejo de Cadenas

~~~

void main(){
  Empresa empresa1 = Empresa(pais:'Colombia',numero:10436639,oficina:'Fedecafe');
  Empresa empresa2 = Empresa(pais:'California',numero: 32673178,oficina:'Apple');
  Empresa empresa3 = Empresa(pais:'España',numero: 30175816,oficina:'BBVA');
  
  print("""
  Usuarios de Empresas

  1° Empresa:
    Pais: ${empresa1.pais}.
    Identificacion: ${empresa1.numero}.
    Oficina: ${empresa1.oficina}.
    
    Codigo: ${empresa1.generarCodigo()}.
""");
  empresa1.cantCaracteres();
  
  print("""
  2° Empresa:
    Pais: ${empresa2.pais}.
    Identificacion: ${empresa2.numero}.
    Oficina: ${empresa2.oficina}.
    
    Codigo: ${empresa2.generarCodigo()}.
""");
  empresa2.cantCaracteres();

    print("""
  3° Empresa:
    Pais: ${empresa3.pais}.
    Identificacion: ${empresa3.numero}.
    Oficina: ${empresa3.oficina}.
    
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
  ----------------------------------------
    caracteres de oficina son: $cantOfic.
    caracteres de pais: $cantPais.
    caracteres de numero: $cantNum.
  ----------------------------------------
""");
}
}
~~~~
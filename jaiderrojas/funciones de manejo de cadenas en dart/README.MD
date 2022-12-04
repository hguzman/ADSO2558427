## cadenas en dart

~~~
void main(){
  Empresa empresa1 = Empresa(pais:'brazil',numero:994888,oficina:'Aeromot');
  Empresa empresa2 = Empresa(pais:'panama',numero: 164873,oficina:'Apple');
  Empresa empresa3 = Empresa(pais:'alemania',numero: 253965,oficina:'	Volkswagen');
  
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
  String? paisA = pais!.substring(0,2);
  int? cantOfic = oficina?.length;
  int? posOfi = cantOfic! - 1;
  String? ofic = oficina!.substring(posOfi, cantOfic);
  String? numtostr = numero.toString();
  String? num = numtostr.substring(0,1);
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
~~~

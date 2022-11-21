```
void main(){
  Empresa empresa = new Empresa(pais: "Colombia", numero: 200244, oficina: "Pentecostal");
    empresa.cantCaracteres();
    print( """
    El codigo es: ${empresa.generarCodigo()}
    """);
  Empresa empresa1 = new Empresa(pais: "Mexico", numero: 125345, oficina: "La trinidad");
    empresa1.cantCaracteres();
    print("""
    El codigo es: ${empresa1.generarCodigo()}
    """);
  Empresa empresa2 = new Empresa(pais: "Marruecos", numero: 666343, oficina: "Garena");
    empresa2.cantCaracteres();
    print("""
    El codigo es: ${empresa2.generarCodigo()}
    """);
  }


class Empresa{
  String? pais, oficina;
  int? numero;
  
  String? generarCodigo(){
  String? paisA = pais!.substring(0,3);
  int? cantOficina = oficina?.length;
  int? posOfi = cantOficina! - 3;
  String? ofi = oficina!.substring(posOfi, cantOficina);
  String? numtostr = numero.toString();
  String? num = numtostr.substring(0,3);
  String? codigo = '$paisA$num$ofi';
  return codigo;
  }
  
  void cantCaracteres(){
    int cantPais = pais!.length;
    int cantNumero = numero!.toString().length;
    int cantOficina = oficina!.length;
    print ("""
    La cantidad de carateres en Pais es: $cantPais
    La cantidad de caracteres en numero es: $cantNumero
    La cantidad de caracteres en oficina es: $cantOficina
    """);
    
  }
  
  Empresa({this.pais, this.oficina, this.numero});
  
  
  }
  ```

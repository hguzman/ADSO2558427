<h2 align="center">Funciones de manejo de cadenas en Dart</h2>

```
void main(){
  Empresa empresa1 = new Empresa(pais: 'Colombia', numero: 81482, oficina: 'Parque central');
  
  Empresa empresa2 = new Empresa(pais: 'Chile', numero: 667145, oficina: 'Mall Plaza Trebol');
  
  Empresa empresa3 = new Empresa(pais: 'Peru', oficina: 'Jockey Plaza', numero: 3065414);

  String titulo = 'Microsoft - Empresas deportadas por Windows pirata';
  print("""
  $titulo
  Información:
    Empresa n°1:
      Pais: ${empresa1.pais}.
      Numero: ${empresa1.numero}.
      Oficina: ${empresa1.oficina}.
      Codigo: ${empresa1.generarCodigo()}.
  """);
  empresa1.cantCaracteres();
  print("""
    Empresa n°2:
      Pais: ${empresa2.pais}.
      Numero: ${empresa2.numero}.
      Oficina: ${empresa2.oficina}.
      Codigo: ${empresa2.generarCodigo()}.
  """);
  empresa2.cantCaracteres();
  print("""
    Empresa n°3:
      Pais: ${empresa3.pais}.
      Numero: ${empresa3.numero}.
      Oficina: ${empresa3.oficina}.
      Codigo: ${empresa3.generarCodigo()}.
  """);
  empresa3.cantCaracteres();
}

class Empresa {
  String? pais, oficina;
  int? numero;
  
  Empresa({this.pais, this.numero, this.oficina});
  
  String? generarCodigo (){
    String? paisAb = pais!.substring(0,3);
    int? cantidadOficinaAb = oficina?.length;
    int? posicionOficinaAb = cantidadOficinaAb! - 3;
    String? oficinaAb = oficina!.substring(posicionOficinaAb, cantidadOficinaAb);
    String? conversionNumeroAb = numero.toString();
    String numeroAb = conversionNumeroAb.substring(0,3);
    String codigo = '$paisAb$numeroAb$oficinaAb';
    return codigo;
  }
  
  void cantCaracteres(){
    int cantidadPais = pais!.length;
    int cantidadOficina = oficina!.length;
    String? conversionNumero = numero.toString();
    int cantidadNumero = conversionNumero.length;
    print("""
      Cantidad de caracteres:
        $cantidadOficina caracteres en posicion.
        $cantidadPais caracteres en pais.
        $cantidadNumero caracteres de numero.
    """);
  }
}
```
<h2 align="center">Funciones de manejo de cadenas en Dart</h2>

```
void main() {
  List pais = ['Colombia', 'Chile', 'Peru'];
  List oficina = ['Parque central', 'Jockey Plaza', 'Mall Plaza Trebol'];
  List numero = [667145, 3065414, 81482];
  String titulo = 'Puntos de Apple';
  print(titulo);
  for (int l = 0; l < 3; l++) {
    Empresa empresa = new Empresa(pais: pais[l], oficina: oficina[l], numero: numero[l]);
    print('Codigo: ${empresa.generarCodigo()}');
    empresa.cantCaracteres();
  }
}

class Empresa {
  String? pais, oficina;
  int? numero;

  Empresa({this.pais, this.numero, this.oficina});

  String? generarCodigo() => pais!.substring(0, 3) + numero!.toString().substring(0, 3) + oficina!.substring(oficina!.length - 3, oficina!.length);

  void cantCaracteres() {
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
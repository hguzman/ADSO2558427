##  ejercicio 7 metodo string

~~~

void main() {
  List lista = ["colombia", "peru", "alemania"];
  List hoja = [11444, 32324, 12131];
  List docu = ["este", "norte", "oeste"];
  for (int i = 0; i < 3; i++) {
    Empresa empresa =
        new Empresa(pais: lista[i], numero: hoja[i], oficina: docu[i]);

    print(empresa.generalCodigo());
  }
}

class Empresa {
  String? pais;
  int? numero;
  String? oficina;

  Empresa({this.pais, this.numero, this.oficina});

  String? generalCodigo() {
    String p = pais!.substring(1, 3);
    int ope = oficina!.length;
    int ofi = ope - 3;
    String? ofici = oficina!.substring(ofi, ope);
    String? pasar = numero.toString();
    String numeros = pasar.substring(2, 3);
    return "$p$numeros$ofici";
  }

  void cantCaracteres() {
    int p = pais!.length;
    int ofici = oficina!.length;
    String? pasar = numero!.toString();
  }
}

~~~
## ejercicio de herencia y empresa

## 1
~~~
void main() {
  Leon leon = new Leon();
  leon.edad = 55;
  leon.habitad = "africa";
  leon.especie = "depredador";
  Conejo conejo = new Conejo();
  conejo.especie = "herbivoro";
  conejo.edad = 22;
  conejo.habitad = "subamerica";
  Hiena hiena = new Hiena();
  hiena.especie = "depredador";
  hiena.edad = 55;
  hiena.habitad = "africa";
  Hombre hombre = new Hombre();
  hombre.edad = 89;
  hombre.especie = "humana";
  hombre.habitad = "cualquiera";
}

class Animal {
  String? especie;
  int? edad;
  String? habitad;
}

class Omnivoro extends Animal {}

class Carnivoro extends Animal {}

class Herbivoro extends Animal {}

class Conejo extends Herbivoro {}

class Leon extends Carnivoro {}

class Hiena extends Carnivoro {}

class Hombre extends Omnivoro {}

~~~

## 2

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

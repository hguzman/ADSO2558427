# Manejo de cadenas en Dart

~~~
void main() {
  Empresa empresa1 = new Empresa(pais: "COLOMBIA", numero: 3456, oficina: "CENTRO");
    
  Empresa empresa2 = new Empresa(pais: "ECUADOR", numero: 4334, oficina: "SUR");
  
  Empresa empresa3 = new Empresa(pais: "ARGENTINA", numero: 4546, oficina: "OCCIDENTE");
  
  print("""
  _________________________________________________
  EMPRESA #1:
  Pais: ${empresa1.pais}
  Número: ${empresa1.numero}
  Oficina: ${empresa1.oficina}
  Código: ${empresa1.generarCodigo()}
    """);
  empresa1.cantCaracteres();
  
  print("""
  EMPRESA #2:
  Pais: ${empresa2.pais}
  Número: ${empresa2.numero}
  Oficina: ${empresa2.oficina}
  Código: ${empresa2.generarCodigo()}
  """);
  empresa2.cantCaracteres();
  
  print("""
  EMPRESA #3:
  Pais: ${empresa3.pais}
  Número: ${empresa3.numero}
  Oficina: ${empresa3.oficina}
  Código: ${empresa3.generarCodigo()}
  """);
  empresa3.cantCaracteres();
}

class Empresa {
  String? pais, oficina;
  int? numero;

  Empresa({this.pais, this.numero, this.oficina});
  
  String? generarCodigo(){
    String? generador = pais!.substring(0,3) + numero.toString().substring(0,3) + oficina!.substring(oficina!.length - 3);
    return generador;
  }
  void cantCaracteres(){
    int numpa = pais!.length;
    int numnu = numero!.toString().length;
    int numof = oficina!.length;
    int total = numpa + numnu + numof;
    print ("""
  El número de carácteres de pais: $numpa
  El número de carácteres de los numeros: $numnu
  El número de carácteres de la oficina son: $numof    
  Cantidad total de carácteres: $total
  _________________________________________________
    """);
  }
}
~~~
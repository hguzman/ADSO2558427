# Código Herencia 2
```
void main(){
  for(int i = 0; i < 5; i++){
    Empresa empresa = Empresa("Colombia", "Centro", 1233);
    empresa.cantCaracteres();
    print('    CODIGO: ${empresa.generarCodigo()}'); 
  }
}

class Empresa{
  String? pais, oficina;
  int? numero;
  
  String generarCodigo(){
    String codigo = pais!.substring(0, 3) + numero!.toString().substring(0, 3) + oficina!.substring(oficina!.length - 3, oficina!.length);
    return codigo;
  }
  
  void cantCaracteres(){
    int cantPais = pais!.length;
    int cantNumero = numero!.toString().length;
    int cantOficina = oficina!.length;
    print('''-----
    EMPRESA
    La cantidad de caracteres del pais es: $cantPais.
    La cantidad de caracteres del numero: $cantNumero. 
    La cantidad de caracteres de la oficina: $cantOficina''');
  }
  
  Empresa(this.pais, this.oficina, this.numero);
}
```

# Código Herencia 2
```
void main(){
  List paises = ["Colombia", "Venezuela", "Perú"];
  List oficinas = ["Centro", "Sur", "Norte"];
  List numeros = [1233, 3312, 2121];
  
  for(int i = 0; i < 3; i++){
    Empresa empresa = Empresa(pais: paises[i], oficina: oficinas[i], numero: numeros[i]);
    empresa.cantCaracteres();
    print('    CODIGO: ${empresa.generarCodigo()}'); 
  }
}

class Empresa{
  String? pais, oficina;
  int? numero;
  
  String generarCodigo() => pais!.substring(0, 3) + numero!.toString().substring(0, 3) + oficina!.substring(oficina!.length - 3, oficina!.length);
  
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
  
  Empresa({this.pais, this.oficina, this.numero});
}
```

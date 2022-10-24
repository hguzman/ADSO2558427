~~~
void main(){
  List empresas =[
    {'pais': 'Colombia', 'numero': 1111, 'oficina': 'sur'},               
    {'pais': 'Venezuela', 'numero': 2222, 'oficina': 'norte'},             
    {'pais': 'Ecuador', 'numero': 3333, 'oficina': 'centro'},             
  ];
  for (int i = 0; i < 3; i++){
    Empresa empresa = Empresa(pais:empresas[i]['pais'], numero:empresas[i]['numero'], oficina:empresas[i]['oficina']);
    empresa.caracteres();
    print('El codigo de la empresa numero $i es: ${empresa.codigo()}');
  } 
} 
class Empresa{
  String? pais, oficina;
  int? numero;
  
  Empresa({this.pais, this.numero, this.oficina});
  
  String codigo() => pais!.substring(0,3)+ numero.toString().substring(0,3)+ oficina!.substring(oficina!.length - 3, oficina!.length);
  
  void caracteres(){
    int cPais = pais!.length;
    int cNumero = numero!.toString().length;
    int cOficina = oficina!.length;
    print("""
    
    EMPRESA
    La cantidad de caracteres del pais es: $cPais.
    La cantidad de caracteres del numero es: $cNumero.
    La cantidad de caracteres de la oficina es: $cOficina.
    """);
  }

}
~~~  

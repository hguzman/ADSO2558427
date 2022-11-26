~~~
void main(){ 
  List listaCiudades = ['Barranquilla','Bogota','Medellin'];
  List listaNumeros = [270403, 071003, 199609, 202284];
  List listaOficina = ['Norte', 'Sur', 'Centro'];
  for (int i = 0; i < 3; i++){
    Empresa empresa = Empresa(ciudad:listaCiudades[i],oficina:listaOficina[i],numero:listaNumeros[i]);
    print ('El codigo de la empresa es ${empresa.generarCodigo()}');
    
    empresa.cantCaracteres();
  }
  
}
class Empresa{ 
  String? ciudad, oficina; 
  int? numero;
  
  
  Empresa ({this.ciudad, this.oficina, this.numero});
  String generarCodigo(){
    int caractoficina = oficina!.length - 3;
    return ciudad!.substring(0,3) + numero.toString().substring(0,3) + oficina!.substring(caractoficina, oficina!.length);
  }
  void cantCaracteres(){
    
    int cantTotal = ciudad!.length + oficina!.length + numero!.toString().length;
    print ("""
  
    La cantidad de caracteres de ciudad: ${ciudad!.length}
    La cantidad de caracteres de oficina: ${oficina!.length}
    La cantidad de caracteres de numero: ${numero!.toString().length}
    Cantidad total: $cantTotal

    """);
  }
}
~~~


```
void main(){ 
  List listaPais = ['Canada','Noruega','Colombia','Brazil'];
  List listaCodigo = [45342, 093434, 199634, 202345, 230445];
  List listaOficina = ['IBM', 'Overflow', 'Pragmat', 'Baire'];
  for (int i = 0; i < 3; i++){
    Empresa empresa = Empresa(pais:listaPais[i],oficina:listaOficina[i],codigo:listaCodigo[i]);
    print ('El codigo de la empresa es ${empresa.generarCodigo()}');
    
    empresa.cantCaracteres();
  }
  
}
class Empresa{ 
  String? pais, oficina; 
  int? codigo;
  
  Empresa ({this.pais, this.oficina, this.codigo});
  String generarCodigo(){
    int caractoficina = oficina!.length - 3;
    return pais!.substring(0,3) + codigo.toString().substring(0,3) + oficina!.substring(caractoficina, oficina!.length);
  }
  void cantCaracteres(){
    
    int cantTotal = pais!.length + oficina!.length + codigo!.toString().length;
    print ("""
  
    La cantidad de caracteres de ciudad: ${pais!.length}
    La cantidad de caracteres de oficina: ${oficina!.length}
    La cantidad de caracteres de numero: ${codigo!.toString().length}
    Cantidad total: $cantTotal
    """);
  }
}
```
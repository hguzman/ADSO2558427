## Camilo Lafauire 
## Manejo de cadenas 
~~~

void main(){ 
  List listpais = ['italia','francia','Alemania'];
  List listoficina = ['paganni', 'bugatti', 'porsche'];
  List listnume = [633299, 310530, 1042242, ];
  for (int i = 0; i < 3; i++){
    Empresa empresa = Empresa(pais:listpais[i],nume:listnume[i],oficina:listoficina[i]);
    print ('El codigo de la empresa es ${empresa.generarCodigo()}');
    print("""
    El pais es: ${empresa.pais}.
    El numero de identificacion es: ${empresa.nume}.
    La oficina es: ${empresa.oficina}. 
    """);
    empresa.cantCaracteres();
  }
  
}
class Empresa{ 
  String? pais, oficina; 
  int? nume;
  
  
  Empresa ({this.pais, this.oficina, this.nume});
  String generarCodigo(){
    int caractoficina = oficina!.length - 3;
    return pais!.substring(0,3) + oficina!.substring(caractoficina, oficina!.length) + nume.toString().substring(0,3);
  }
  void cantCaracteres(){
    
    int cantTotal = pais!.length + oficina!.length + nume!.toString().length;
    print ("""
  
    La cantidad de caracteres de pais: (${pais!.length})
    La cantidad de caracteres de oficina: (${oficina!.length})
    La cantidad de caracteres de numero: (${nume!.toString().length})
    Cantidad total: ($cantTotal)
    """);
  }
}

~~~
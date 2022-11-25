### Ejercicio en dartpad con lista 

~~~
void main(){

  List listapais = ['Argentina', 'Colombia', 'Mexico']; 
  List listanumero = [1043660098, 3242828122, 8566820]; 
  List listaoficina = ['advantice', 'Lenovo', 'apple'];

  for (int i = 0; i < 3; i++){

    Empresa empresa = Empresa(pais:listapais[i],numero:listanumero[i],oficina:listaoficina[i]);
    print ('''
    El codigo de la empresa es: ${empresa.generarCodigo()}
    el pais es: ${empresa.pais}
    el numero es: ${empresa.numero}
    la oficia es: ${empresa.oficina}
	  ''');

    empresa.cantCaracteres();

  }
}
 class Empresa{
    String? pais, oficina;
    int? numero;
 Empresa({this.pais, this.numero, this.oficina});

  String? generarCodigo(){
  String? paisCod = pais!.substring(0,3);
  int? cantoff = oficina?.length; 
  int? poffice = cantoff! - 3; 
  String? oficinaCod = oficina!.substring(poffice,cantoff);
  String? cantnum = numero.toString();
  String? nume = cantnum.substring(0,4);
  String? codigo = '$paisCod$oficinaCod$nume';
  return codigo;  
    }

 void cantCaracteres(){
   int? crtpais = pais!.length; 
   int? cantoff= oficina!.length;
   String? crtnumero = numero.toString();
   int? numerocrt = crtnumero.length; 

   print("""
  ----------------------------------------
    caracteres de oficina son: $cantoff.
    caracteres de pais: $crtpais.
    caracteres de numero: $numerocrt.
   ----------------------------------------
""");
}
}
~~~

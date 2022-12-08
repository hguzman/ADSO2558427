### Ejercicio en dartpad empresa 

~~~

void main(){
    Empresa empresa1 = new Empresa(pais:'Argentina', numero:1043660098, oficina:'Advantice');
    Empresa empresa2 = new Empresa(pais:'Colombia', numero: 3242828122, oficina:'Lenovo');


   print("""
    Usuarios de Empresas
    1° Empresa:

      Pais: ${empresa1.pais}.
      Identificacion: ${empresa1.numero}.
      Oficina: ${empresa1.oficina}.
      Codigo: ${empresa1.generarCodigo()}
  """);
          empresa1.cantCaracteres();


     print("""
    2° Empresa:
      Pais: ${empresa2.pais}.
      Identificacion: ${empresa2.numero}.
      Oficina: ${empresa2.oficina}

      codigo: ${empresa2.generarCodigo()}
  """);
  
      
     empresa2.cantCaracteres();
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
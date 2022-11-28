~~~
void main() {
 List listapais = ['colombia', 'peru', 'mexico'];
 List listaoficina = ['central', 'plazas', 'norte'];
 List listanumeros = [1234, 5678, 9101];
   
  for (int i = 0; i < 3; i ++){ 
  
  Empresa empresa = new Empresa(pais: listapais [i], oficina: listaoficina[i], numeros: listanumeros[i]); 
    
    print('el codigo de la empresa es $i es:${empresa.codigo()}');
    empresa.cantidadcaracateres();
    
    }
}

class Empresa{ 

 String? pais, oficina;
 int? numeros;
Empresa ({this.pais, this.oficina, this.numeros});
  
  String codigo() => pais!.substring(0,3)+ numeros.toString().substring(0,3)+ oficina!.substring(oficina!.length - 3, oficina!.length);
void cantidadcaracateres (){ 
   int cadadpais = pais!.length;
   int cadadoficina = oficina!.length;
  String? conversionnumero = numeros.toString();
   int cadadnumero = conversionnumero.length;
       print("""
   
   EMMPRESAS
  los caracteres de el pais es: $cadadpais.
  los caracteres de las oficinas son: $cadadoficina.
  los caracteres de los numeros es: $cadadnumero.
  
 """);
 

}
           
}
~~~
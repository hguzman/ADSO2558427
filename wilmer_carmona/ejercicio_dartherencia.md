``` 


void main(){
    Empresa empresa1 = Empresa (numero: 345647, pais: "Alemania",oficina: "AirBerlin");
    Empresa empresa2 = Empresa (numero: 234567, pais: "Colombia", oficina: "Ecopetrol");
    Empresa empresa3 = Empresa (numero: 234565, pais: "Argentina", oficina: "Starbucks");
    Empresa empresa4 = Empresa (numero: 234567, pais: "España", oficina: "Mercadona");
    Empresa empresa5 = Empresa (numero: 345678, pais: "Afganistán", oficina: "McDonalds");
   
  
    empresa1.cantDcaracteres();
    print(empresa1.generarCodigo());
    
    empresa2.cantDcaracteres();
    print(empresa2.generarCodigo());
    
    empresa3.cantDcaracteres();
    print(empresa3.generarCodigo());
    
    empresa4.cantDcaracteres();
    print(empresa4.generarCodigo());
    
    empresa5.cantDcaracteres();
    print(empresa5.generarCodigo());
    
    }

class Empresa{
  String? pais, oficina;
  int? numero;
  
  String generarCodigo(){
    String codigo = pais!.substring(0, 3 ) + numero!.toString().substring(0, 4) + oficina!.substring(oficina!.length -3, );
    return codigo;
  }

  void cantDcaracteres(){
    int cantDpais = pais!.length;
    int cantDoficina = oficina!.length;
    int cantDnumero = numero!.toString().length;
    
    print("""-------------------------------------------------------------
                          EMPRESA 
             Cantidad de caracteres de país: $cantDpais
             Cantidad de caracteres de oficina:  $cantDoficina
             Cantidad de caracteres de numero: $cantDnumero
  Código""");
  }
  
  
  
  Empresa ({this.pais, this.oficina, this.numero});
}


``` 
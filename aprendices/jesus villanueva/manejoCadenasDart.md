``` 
void main(){
    Empresa empresa1 = Empresa (numero: 111111, pais: "chile",oficina: "poweon");
    Empresa empresa2 = Empresa (numero: 222222, pais: "Colombia", oficina: "electricaribe");
    Empresa empresa3 = Empresa (numero: 333333, pais: "españa", oficina: "nintendo");
   
   
  
    empresa1.cantcaracteres();
    print(empresa1.generarCodigo());
    
    empresa2.cantcaracteres();
    print(empresa2.generarCodigo());
    
    empresa3.cantcaracteres();
    print(empresa3.generarCodigo());
    
    
    }

class Empresa{
  String? pais, oficina;
  int? numero;
  
  String generarCodigo(){
    String codigo = pais!.substring(0, 3 ) + numero!.toString().substring(0, 4) + oficina!.substring(oficina!.length -3, );
    return codigo;
  }

  void cantcaracteres(){
    int cant_pais = pais!.length;
    int cant_oficina = oficina!.length;
    int cant_numero = numero!.toString().length;
    
    print("""
                          EMPRESA 
            Cantidad de caracteres de país: $cant_pais
            Cantidad de caracteres de oficina:  $cant_oficina
            Cantidad de caracteres de numero: $cant_numero
  Código""");
  }
  
  
  
  Empresa ({this.pais, this.oficina, this.numero});
}

``` 
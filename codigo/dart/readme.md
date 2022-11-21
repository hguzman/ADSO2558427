# Ejemplo codigo DART

## Constructor desde JSON

Permite contruir un objeto desde un String que contiene un JSON

```
import 'dart:convert';

void main(){
  // Pidiendo información al servidor
  // Esperamos respuesta
  // Recibimos Json del Back-end o servidor
  String textoJson = '{"cedula": 123, "nombre": "Carlos", "sexo": false}';

  Persona persona = new Persona.desdeRespuestaJson(textoJson);
  print(persona.nombre);
  print(persona.cedula);
  print(persona.sexo);

}

class Persona{
  String nombre;
  int cedula;
  bool sexo;

  Persona.desdeRespuestaJson(String json){
    Map mapa;
    mapa = jsonDecode(json); // cambiar de un String a un Map
    this.nombre = mapa['nombre'];
    this.cedula = mapa['cedula'];
    this.sexo = mapa['sexo'];
  }
}
```

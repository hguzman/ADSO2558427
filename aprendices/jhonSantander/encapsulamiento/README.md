<h2 align=center>Encapsulamiento - alcance public, private - metodos Setter y Getter</h2>

```
public class Main {
    public static void main(String args[]) {
      Person persona1 = new Person("Acosta");
      
      persona1.nombre = "Guillermo";
      System.out.println(persona1.nombre);
      System.out.println(persona1.getApellido());
      persona1.setGenero("Masculino");
      System.out.println(persona1.imc(80.4,1.70));
    }
}

class Person {
    public String nombre;
    private String apellido;
    private String genero;
    
    public String getApellido(){
        return this.apellido;
    }
    
    public void setGenero(String g){
        this.genero = g;
    }
    
    Person (String apellido){
        this.apellido = apellido;
    }
    
    public double imc(double peso, double altura){
        return (peso / (altura*altura));
    }
}
```

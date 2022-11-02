~~~
public class Main {
    public static void main(String args[]) {
      Person persona1 = new Person("Turizo");
      
      persona1.nombre = "Andres";
      System.out.println(persona1.nombre);
      System.out.println(persona1.getApellido());
      persona1.setGenero("Hombre");
      System.out.println(persona1.imc(65,1.75));
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
~~~

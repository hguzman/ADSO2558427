## metodos setter y getter

~~~
public class Main {
    public static void main(String args[]) {
      Person persona1 = new Person("rojas");
      
      persona1.nombre = "Messi";
      System.out.println(persona1.nombre);
      System.out.println(persona1.getApellido());
      persona1.setGenero("Masculino");
      System.out.println(Person.imc(80.4,1.70));
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
    
    public static double imc(double peso, double altura){
        return (peso / (altura*altura));
    }
}
~~~
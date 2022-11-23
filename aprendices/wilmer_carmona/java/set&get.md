``` 

public class Person{
    String nombre;
    private String apellido, genero;
    
    public String getApellido(){
        return apellido;
    }

    public void setGenero(String genero){
        this.genero = genero;
    }
    
    public Person(String nombre, String apellido){
        this.nombre = nombre;
        this.apellido =  apellido;
    }

    public double imc(int peso, int altura){
        int imc = peso * altura;
        return imc;
    }

   public static void main(String args[]){
       Person persona = new Person ("Orlando","Hernandez");
       System.out.println (persona.nombre + " " + persona.getApellido());
       System.out.println (persona.imc(23,45));
   } 
}

``` 
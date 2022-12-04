````
public class Person{
    String nombre;
    private String apellido, genero;
    
    public String getApellido(){
        return apellido;
    }
    
    public void setGenero(String genero){
        this.genero = genero;
    }
    
    public double Imc(double peso, double altura){
        double imc = peso * altura;
        return imc;
    }
    
    public Person(String apellido){
        this.apellido = apellido;
    }
    
    public static void main (String args[]){
        Person person1 = new Person("Ramirez");
        person1.nombre = "Ernesto";
        person1.setGenero("Masculino");
        System.out.println(person1.nombre + " " + person1.getApellido());
        System.out.println("IMC " + person1.Imc(50.0, 1.67));
    }
}
````
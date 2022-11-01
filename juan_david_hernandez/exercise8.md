~~~
public class MyClass {
    public static void main(String args[]) {
        Person person = new Person ("Hernandez");
        person.nombre = "Juan";
        person.setGenero("masculino");

        System.out.println("El nombre es: " + person.nombre);
        System.out.println("El apellido es " + person.getApellido());
        System.out.println("El imc es " + Person.imc(80, 177));
        System.out.println("El genero de la persona es " + person.getGenero());
        
        
    }
}
class Person{
    public String nombre; 
    private String apellido; 
    private String genero;
    
    Person(String apellido){
    this.apellido = apellido; 
    }
    String getApellido(){ 
        return this.apellido;
    }
    void setGenero (String g){
        this.genero = g;
    }
    String getGenero(){
        return this.genero;
    }
    static double imc(double peso, double altura){
        return peso * altura;
    }
}
~~~
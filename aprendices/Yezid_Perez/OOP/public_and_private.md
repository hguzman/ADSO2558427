```
public class Main {
    public static void main(String args[]) {
   
       Person person = new Person("Lebrom");
       person.nombre = "James";
   
    System.out.println("El nombre es: " +person.nombre);
        System.out.println("El apellido es: " +person.getapellido());
       
        System.out.println(Person.imc(1.90, 85.8));
   }
}
class Person {
public String nombre;
    private String apellido;
    private String genero;
   
    Person(String apellido){
    this.apellido = apellido;
    }

    public String getapellido(){
    return this.apellido;    
   }
   
   public void setgenero(String g){
    this.genero = g;
        g = ("Masculino");
   }
   
   public static double imc(double altura, double peso){
    return (peso / (altura * altura));  
  }
}
```
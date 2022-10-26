```
public class HelloWorld{

     public static void main(String []args){
         Person person= new Person("zantana");
         person.nombre="daniel";
         person.setGenero("masculino");
         
        System.out.println("el apellido es:"+person.getApellido());
        System.out.println("el nombre es:"+person.nombre);
        System.out.println("la masa es:"+Person.imc(5,4));
        
     }
}
class Person{
    public String nombre;
    private String apellido;
    private String genero;
    
     Person(String apellido){
         this.apellido=apellido;
     }
     String getApellido(){
         return this.apellido;
     }
     void setGenero(String g){
         this.genero=g;
     }
     static double imc(double peso,double altura){
        double imc=peso*altura;
         return imc;
     }
}
```
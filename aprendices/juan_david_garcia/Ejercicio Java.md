```
public class Main {
  public static void main(String[] args) {
  	Person person = new Person("Garcia");
    person.nombre = "juan";
    System.out.println(person.nombre);
    System.out.println(person.getApellido());
    person.setGenero("Masculino");
    System.out.println(person.imc(65,175));
  }
}
class Person{
	public String nombre;
    private String apellido;
    private String genero;
    	Person(String a){
        	this.apellido = a;
        }
        
        String getApellido(){
        return this.apellido;
        
        }
        void setGenero(String g){
        this.genero =g; 
        }
        double imc(int peso, int altura){
        return peso*altura;
        }
      
}
```
```
public class Main {
  
  
  public static void main(String[] args) {
  	Person person = new Person("Vides");
  	person.nombre = "Juan";
    System.out.println(person.nombre);
    System.out.println(person.getApellido());
    person.setGenero("Heterosexual");
    System.out.println(person.imc(80, 175));
    
  }
}
class Person {
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
        	this.genero = g;
        }
        
        double imc(int peso, int altura){
        return peso * altura;
        }

}
``` 
## Setter y Getter

~~~~
public class Main {
  
  
  public static void main(String[] args) {
  	Person person = new Person("Rodriguez");
  	person.nombre = "James";
    System.out.println("El nombre es: " + person.nombre);
    System.out.println("El apellido es: " + person.getApellido());
    person.setGenero("Heterosexual");
    System.out.println("El indice de masa corporal es: " + person.imc(80, 175));
    
  }
}
class Person {
	public String nombre;
    private String apellido, genero;
    
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

~~~~
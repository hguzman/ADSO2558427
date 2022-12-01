~~~
public class Main {
  
  
  public static void main(String[] args) {
  	Person person = new Person("castro");
  	person.nombre = "angel";
    System.out.println(person.nombre);
    System.out.println(person.getApellido());
    person.setGenero("Heterosexual");
    System.out.println(person.imc(75, 100));
    
  }
}
class Person {
	public String nombre;
    private String apellido;
    private String genero;
    
    	Person(String ape){
        	this.apellido = ape;
        }
        
        String getApellido(){
        	return this.apellido;
        }
            
        void setGenero(String gen){
        	this.genero = gen;
        }
        
        double imc(int peso, int altura){
        return peso * altura;
        }
}
~~~
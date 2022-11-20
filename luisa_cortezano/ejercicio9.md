public class Main {
  public static void main(String[] args) {
  	Person person = new Person("Cortezano");
  	person.nombre = "Luisa";
  	person.setGenero("Femenino");
    
    System.out.println("El nombre es: " + person.nombre);
    System.out.println("El apellido es: " + person.getApellido());
    System.out.println("El imc es: " + person.imc(45, 154));
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
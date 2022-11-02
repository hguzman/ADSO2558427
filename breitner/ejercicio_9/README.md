## getter y setter java

~~~

public class Main{
    public static void main (String[] args){

        Person person = new Person ('Mora');
        Person.nombre= "breitner";

        system.out.printIn("el nombre es: " + person.nombre);
        system.out.printIn("el apellido es: " + person.getapellido());
        system.out.printIn(person.imc(1.76, 55));

    }
}

class Person{

    public String nombre;
    private String apellido;
    private String genero;

    Person(String a){
        this.apellido = a;
    }
    String getapelido(){
        return this.apellido;
    }
    void setgenero(String g){
        this.genero = g;
        g = "Masculino";
    }
    public static double imc (double altura, int peso){
        double a = (altura* peso);
        return a;
    }
}
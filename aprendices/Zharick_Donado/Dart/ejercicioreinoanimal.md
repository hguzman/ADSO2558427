### Ejercicio en dartpad del reino animal (Herencia)

~~~
void main(){

  print ("""
	     EL REINO ANIMAL""");



  Cocodrilo cocodrilo = new Cocodrilo();
  cocodrilo.nombre = "Cocodrilo";
  cocodrilo.alimentacion = "Carnivoro";
  cocodrilo.nacimiento = "Ovíparos";
  cocodrilo.habitat = "Mixto";

  print ("""
  El nombre del animal es: ${cocodrilo.nombre}
  su tipo de alimentación es: ${cocodrilo.alimentacion}
  su tipo de desarrollo embrionario es: ${cocodrilo.nacimiento}
  El habitat donde se encuentran es: ${cocodrilo.habitat}
  """);

  Elefante elefante = new Elefante();
  elefante.nombre = "Elefante";
  elefante.alimentacion = "Herviboro";
  elefante.nacimiento = "Vivíparo";
  elefante.habitat = "Terrestre";


  print ("""
  El nombre del animal es: ${elefante.nombre}
  Su tipo de alimentación es: ${elefante.alimentacion}
  Su tipo de desarrollo embrionario es: ${elefante.nacimiento}
  El habitat donde se encuentra es: ${cocodrilo.habitat}

  """);

  Cerdo cerdo = new Cerdo();
  cerdo.nombre = "cerdo";
  cerdo.alimentacion =  "Omnivoro";
  cerdo.nacimiento = "Vivíparo";
  cerdo.habitat = "Terrestre";  


  print("""
  El nombre del animal es: ${cerdo.nombre}
  Su tipo de alimentación es: ${cerdo.alimentacion}
  Su tipo de desarrollo embrionario es: ${cerdo.alimentacion}
  El habitat donde se encuentra es: ${cerdo.habitat}

  """);

  Tiburon tiburon = new Tiburon();
  tiburon.nombre = "Tiburon";
  tiburon.alimentacion = "Carnivoro";
  tiburon.nacimiento = "Vivíparo";
  tiburon.habitat = "Acuático";


  print("""
  El nombre del animal es: ${tiburon.nombre}
  Su tipo de alimentación es: ${tiburon.alimentacion}
  Su tipo de desarollo embrionario es: ${tiburon.nacimiento}
  El habitat donde se encuentra es: ${tiburon.habitat}

  """);

}

   class Animal{
     String? nombre;}
   class Carnivoro extends Animal{
      String? alimentacion;}
   class Herviboro extends Animal{
      String? alimentacion;}
   class Omnivoro extends Animal{
     String? alimentacion;}
   class Cocodrilo extends Carnivoro{
     String? nacimiento;
     String? habitat;}
  class Elefante extends Herviboro{
    String? nacimiento;
    String? habitat;}
  class Cerdo extends Omnivoro{
    String? nacimiento;
    String? habitat;}
  class Tiburon extends Carnivoro{
    String? nacimiento;
    String? habitat;}   
    ~~~
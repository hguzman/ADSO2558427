
### Ejercicio de operaciones en Dartpad 
```
    void main() {
    
    Operaciones operaciones = new Operaciones(); 
    operaciones.num1 = 4.0;
    operaciones.num2 = 2.0;
    
        print('El resultado de la suma es: ${operaciones.sumar()}');
        operaciones.restar();
        print('El resultado de la multiplciacion es: ${operaciones.multiplicar()}');
        
    }

    class Operaciones{
    
    double? num1;
    double? num2; 
        
    void restar (){  
        double rt = num1! - num2!;
        print('El resultado de la resta es: $rt');
    }
        
    double sumar (){
        double s = num1! + num2!;
        return s;
    }
    
    double multiplicar (){
        double? m = num1! * num2!;
        return m;
    }
        
    }
```
  
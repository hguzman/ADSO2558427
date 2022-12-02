# Algoritmo mientras que

~~~
Sub inicio()

    abono = 0
    noabono = 0
    abonodiez = 0
    
    While Recaudado <= 3000000
        dinero = Int(InputBox("que cantidad va a abonar?"))
        If dinero > 0 Then
            abono = abono + 1
            recaudado = recaudado + dinero
            If dinero >= 10000 Then
                abonodiez = abonodiez + 1
            End If
        Else
            noabono = noabono + 1
        End If
        
    Wend
    
    promedio = recaudado / abono
    MsgBox "El total recaudado por los estudiantes es de: $" & recaudado
    MsgBox "El promedio por estudiante es de: $" & promedio
    MsgBox "El numero de estudiantes que aportaron es: " & abono
    MsgBox "El numero de estudiantes que no aportaron es: " & noabono
    MsgBox "El numero de estudiantes que aportaron una cantidad mayor a $10.000: " & abonodiez

End Sub
~~~

![Diagrama](diagramadeflujo.jpg)

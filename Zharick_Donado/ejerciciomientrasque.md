## Ejercicios
- [Ejercicio Ciclo Mientras que]()

```
Sub sena()
    abono = 0
    no_abono = 0
    diezk = 0
    While Recaudo <= 3000000
        dinero = Int(InputBox("Cuanto va a abonar?"))
        If dinero > 0 Then
            abono = abono + 1
            Recaudo = Recaudo + dinero
            If dinero >= 10000 Then
                diezk = diezk + 1
            End If
        Else
            no_abono = no_abono + 1
        End If
    Wend
    promedio = Recaudo / abono
    MsgBox "El total recaudado es de $" & Recaudo
    MsgBox "El promedio del recaudo es de $" & promedio
    MsgBox "La cantidad de estudiantes que abonaron " & "(" & abono & ")" & " Estudiantes"
    MsgBox "La cantidad de estudiantes que no abonaron " & "(" & no_abono & ")" & " Estudiantes"
    MsgBox "Los estudiantes que aportaron una cantidad superior a $10.000:   " & "(" & diezk & ")" &" "Estudiante"
End Sub
```

![foto](diagrama.jpg)

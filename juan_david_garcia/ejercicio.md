```
Sub algoritmo()
    a = 0
    n = 0
    aps = 0
    Total = 0
    
    While Total <= 3000000
        dinero = Int(InputBox("cuanto va a abonar"))
        If dinero > 0 Then
            a = a + 1
            Total = Total + dinero
            If dinero >= 10000 Then
                aps = aps + 1
            End If
        Else
            n = n + 1
        End If
    Wend
    
    prom = Total / a
    MsgBox "el total recaudado es de" & Total
    MsgBox "el promedio del recaudo es de" & prom
    MsgBox "la cantidad de estudiantes que donaron" & "(" & a & ")" & "estudiantes"
    MsgBox "la cantidad de estudiantes que no donaron" & "(" & n & ")" & "estudiantes"
    MsgBox "la cantidad de estudiantes que aportaron una cantidad superior a $10.000:" & "(" & aps & ")" & "estudiantes"
End Sub
```

![Foto](diagrama.jpg)
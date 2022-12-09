Sub inicio()
 
 ~~~
abono = 0
no_abono = 0
cant = 0
recaudo_total = 0
    
For c = 1 To 2
    pregunta = InputBox("va a abonar para el evento? (si o no)")
    If pregunta = "si" Then
        abono = abono + 1
        dinero_r = Int(InputBox("Cuanto va a abonar?"))
        recaudo_total = recaudo_total + dinero_r
        If dinero_r >= 10000 Then
            cant = cant + 1
        End If
    Else
        no_abono = no_abono + 1
    End If
Next c
    
prom = recaudo_total / abono
MsgBox "El total recaudado  es de $" & recaudo_total
MsgBox "El promedio del recaudo total es de $" & prom
MsgBox "Numero de estudiantes que si donaron " & "(" & abono & ")" & " Estudiantes"
MsgBox "Numero de estudiantes que no donaron " & "(" & no_abono & ")" & " Estudiantes"
MsgBox "Estudiantes que aportaron mas de $10.000:   " & "(" & cant & ")" & " Estudiantes"
End sub
~~~

## Algoritmo for
~~~
Sub inicio()
    
    abono = 0
    no_abono = 0
    cant = 0
    recaudo_total = 0
    
    For c = 1 To 3
        pregunta = InputBox("Desea aportar para la recolecta (si o no")
        If pregunta = "si" Then
            abono = abono + 1
            dinero_rec = Int(InputBox("que cantidad va a aportar?"))
            recaudo_total = recaudo_total + dinero_rec
            If dinero_rec >= 10000 Then
                cant = cant + 1
            End If
        Else
            no_abono = no_abono + 1
        End If
    Next c
    
    prom = recaudo_total / abono
    MsgBox "El total de recaudado por los estudiantes es: " & recaudo_total
    MsgBox "El promedio recaudado por estudiante es: " & prom
    MsgBox "El numero de estudiantes que aportaron es: " & "(" & abono & ")" & " Estudiantes"
    MsgBox "El numero de estudiantes que no aportaron es: " & "(" & no_abono & ")" & " Estudiantes"
    MsgBox "Los estudiantes que aportaron una cantidad superior a $10.000: " & "(" & cant & ")" & " Estudiantes"
        
End Sub
~~~
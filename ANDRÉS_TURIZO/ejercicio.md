~~~
Sub ejercicio()

    dinero_total = 0
    While dinero_total < 3000000
        pregunta = Int(InputBox("Cuánto va a abonar"))
        If pregunta > 0 Then
            si_abona = si_abona + 1
            If pregunta >= 10000 Then
                abono_10000 = abono_10000 + 1
            End If
            dinero_total = dinero_total + pregunta
        Else
            no_abona = no_abona + 1
        End If
    Wend
    promedio = dinero_total / si_abona
    MsgBox "Donaron (" & si_abona & ") personas"
    MsgBox "No donaron (" & no_abona & ") personas"
    MsgBox "Donaron más de 10000 (" & abono_10000 & ") personas"
    MsgBox "El total abonado es " & dinero_total
    MsgBox "El promedio de los estudiantes que donaron es " & promedio
    
End Sub
~~~

![Diagrama](diagrama.JPG)
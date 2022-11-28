``` 
Sub b()
    si_abona = 0
    no_abona = 0
    abono_10000 = 0
    total_abonado = 0
    For i = 1 To 3
        pregunta = InputBox("¿Va a abonar? " & i)
        If pregunta = "si" Then
            si_abono = si_abono + 1
            dinero = Int(InputBox("¿Cuánto va a abonar?"))
            total_abonado = total_abonado + dinero
            If dinero >= 10000 Then
                abono_10000 = abono_10000 + 1
            End If
        Else
            no_abono = no_abono + 1
        End If
    Next i
    promedio = total_abonado / si_abono
    MsgBox "Donaron " & si_abono & " personas"
    MsgBox "No donaron " & no_abono & " personas"
    MsgBox "Donaron más de 10000 " & abono_10000 & " personas"
    MsgBox "El total abonado fue " & total_abonado
    MsgBox "El promedio de los estudiantes que donaron es " & promedio
End Sub
```

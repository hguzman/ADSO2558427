# Ciclo For
```
Sub Recaudo()
    rTotal = 0
    aportados = 0
    aportadosN = 0
    superior = 0

    For a = 1 To 3
        pregunta = InputBox("Cuánto va aportar el estudiante")
        If pregunta > 0 Then
            rTotal = pregunta + rTotal
            aportados = aportados + 1
            If (pregunta > 10000) Then
                superior = superior + 1
            End If
        Else
            aportadosN = aportadosN + 1
        End If
    Next
            
    promedio = rTotal / aportados
    MsgBox ("Numero total de aportes: " & aportados)
    MsgBox ("Numero total de estudiantes que no aportaron: " & aportados)
    MsgBox ("Valor total aportado " & rTotal)
    MsgBox ("Promedio del aporte: " & promedio)
End Sub
```
```
Sub ejercicio()
    x = 2
    sw = True
    cedula = Int(InputBox("ingrese la ceudla de ciudadania"))
    While sw
        If cedula = datos.Cells(x, 1) Then
            nombre = datos.Cells(x, 2)
            sw = False
            MsgBox " el nombre es:" & nombre
        End If
        If x = 20 Then
            MsgBox " su cedula no esta registrada"
            sw = False
        End If

    x = x + 1

    Wend

End Sub
```

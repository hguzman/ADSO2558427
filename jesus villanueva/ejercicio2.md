```
Sub ejercicio()
    x = 2
    sw = True
    cedula = Int(InputBox("ingrese la cedula de ciudadania"))
    While sw
        If cedula = Hoja1.Cells(x, 1) Then
            nombre = Hoja1.Cells(x, 2)
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

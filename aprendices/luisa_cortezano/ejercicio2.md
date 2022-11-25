```
Sub datos()
    f = 1
    sw = True
    
    c = Int(InputBox("ingrese numero de cedula"))
    
    While sw
        If c = Hoja1.Cells(f, 2) Then
            n = Hoja1.Cells(f, 1)
            sw = False
            MsgBox "Su nombre es: " & n
        Else
            MsgBox "numero de documento no registrado"
            sw = False
            f = f + 1
        End If
    Wend
    
End Sub
```
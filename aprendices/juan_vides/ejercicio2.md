```
Sub ejercicio()
    fila = 2
    sw = True
    cedula = Int(nume.Cells(9, 4))
    While sw
        If cedula = reg.Cells(fila, 1) Then
            nombre = reg.Cells(fila, 2)
            nume.Cells(11, 4) = nombre
            sw = False
        End If
        If fila = 20 Then
            MsgBox ("No existe")
            sw = False
        End If
        fila = fila + 1
    Wend
    
End Sub
```

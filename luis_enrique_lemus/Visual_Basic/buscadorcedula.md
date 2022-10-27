## Buscador de Cedula con Mientras que y Switch
~~~

Sub buscador()
    a = 3
    sw = True
    c = Int(InputBox("Ingrese la cedula:"))
    While sw
        If c = datos.Cells(a, 2) Then
            nom = datos.Cells(a, 3)
            MsgBox "Su nombre es: " & nom
            sw = False
        End If
        If datos.Cells(a, 2) = "" Then
            MsgBox "Su cedula no esta registrada"
            sw = False
        End If
        a = a + 1
    Wend
End Sub


~~~
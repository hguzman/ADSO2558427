~~~
Sub ejercicio()
    a = 2
    tr = True
    cedula = Int(InputBox("ingrese la ceudla de ciudadania"))
    While sw
        If cedula = datos.Cells(a, 1) Then
            nombre = datos.Cells(a, 2)
            sw = False
            MsgBox " el nombre es:" & nombre
        End If
        If x = 20 Then
            MsgBox " su cedula no esta registrada"
            sw = False
        End If

    a = a + 1

    Wend

End Sub
~~~
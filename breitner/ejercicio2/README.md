## ejercicio 2

~~~
Sub ejercicio()
    contador = m.Cells(1, 6)
    sw = True
    cedula = Int(InputBox("ingrese su ID: "))
    While sw
        If cedula = m.Cells(contador, 1) Then
            n = m.Cells(contador, 2)
            sw = False
            MsgBox " el nombre es:" & n
        End If
        If x = 20 Then
            MsgBox " no hay resultados"
            sw = False
        End If
        contador = contador + 1
    Wend
End Sub
~~~
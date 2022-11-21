# Ciclo MQ (2) Búsqueda por número de cédula

~~~
Sub buscar()
    fila = 2
    sw = True
    cedu = Int(InputBox("Ingrese le número de cédula"))
    While sw
        If cedu = Hoja1.Cells(fila, 1) Then
            MsgBox ("El nombre es: " & Hoja1.Cells(fila, 2))
            sw = False
        Else
            fila = fila + 1
            sw = True
            If Hoja1.Cells(fila, 2) = "" Then
                MsgBox ("Cédula no encontrada")
                sw = False
            End If
        End If
    Wend
End Sub
~~~
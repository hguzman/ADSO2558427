Sub ejercicio()
    w = 3
    fila = 3
    sw = True
    
    ent = Int(InputBox("Ingresar su numero de cedula"))
    
    While sw = True
        If ent = Hoja1.Cells(fila, 2) Then
            MsgBox (Hoja1.Cells(fila, 1))
            sw = False
        Else
            w = w + 1
            fila = fila + 1
            sw = True
            If w = 24 Then
                MsgBox (" esta cedula no está en el registro")
                sw = False
            End If
        End If
    Wend
End Sub
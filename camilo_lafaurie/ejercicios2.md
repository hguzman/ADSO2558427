Sub ejercicio()
    n = 2
    fila = 2
    ID = True
    
    ent = Int(InputBox("Ingresar numero de identificacion"))
    
    While ID = True
        If ent = cedulas.Cells(fila, 2) Then
            MsgBox (cedulas.Cells(fila, 1))
            ID = False
        Else
            n = n + 1
            fila = fila + 1
            ID = True
            If n = 24 Then
                MsgBox ("identificacion no encontrada")
                ID = False
            End If
        End If
    Wend
End Sub
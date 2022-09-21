```` 
Private Sub Buscar_Click()
    sw = True
    fila = 3
    While sw
        If Entrada.Text = Registro.Cells(fila, 2) Then
            MsgBox "La cédula ingresada (" & Registro.Cells(fila, 2) & ") identifica a: " & Registro.Cells(fila, 1)
            MsgBox "El sr(sra): " & Registro.Cells(fila, 1) & " posee un coche modelo " & Registro.Cells(fila, 4) & ", color: " & Registro.Cells(fila, 3)
            sw = False
        Else
            If Entrada.Text = Empty Then
                MsgBox "Por favor ingrese un valor valido"
                sw = False
            Else
                If Registro.Cells(fila, 2) = Empty Then
                    MsgBox "No se encontró el documento"
                    sw = False
                End If
            End If
        End If
        fila = fila + 1
        
    Wend
End Sub
````

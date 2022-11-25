``` 
Private Sub B_Buscar1_Click()
    sw = True
    fila = 3
    While sw
        If Entrada.Text = Registro.Cells(fila, 2) Then
            Formulario_registro.TextBox_Propietario.Text = Registro.Cells(fila, 1)
            Formulario_registro.TextBox_Cedula.Text = Registro.Cells(fila, 2)
            Formulario_registro.TextBox_Color.Text = Registro.Cells(fila, 3)
            Formulario_registro.TextBox_Modelo.Text = Registro.Cells(fila, 4)
            Entrada.Text = Empty
            sw = False
            Buscar.Hide
            Formulario_registro.Show
        Else
            If Entrada.Text = Empty Then
                MsgBox "Por favor ingrese un valor valido"
                sw = False
            Else
                If Registro.Cells(fila, 2) = Empty Then
                    MsgBox "No se encontró el documento"
                    sw = False
                    Buscar.Hide
                    Formulario_registro.Show
                End If
            End If
        End If
        fila = fila + 1
    Wend
End Sub
``` 
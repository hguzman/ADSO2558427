## FORMULARIO CONCESIONARIO 
    ~~~ 
    Private Sub btbuscar_Click()
            ID = True
                a = 3
                textcedula.Text = Int(InputBox("Digite el número de cedula"))
                
                While ID
                        If textcedula.Text = datos.Cells(a, 1) Then
                            cedula = datos.Cells(a, 1)
                            nombre = datos.Cells(a, 2)
                            apellido = datos.Cells(a, 3)
                            modelo = datos.Cells(a, 4)
                            
                            textcedula.Text = cedula
                            textnombre.Text = nombre
                            textapellido.Text = apellido
                            textmodelo.Text = modelo
                            ID = False
                        Else
                            If datos.Cells(a, 1) = "" Then
                            MsgBox "Su cedula no se encuentra registrada"
                            sw = False
                            End If
                        End If
                        datos.Cells(2, 6) = a
                        a = a + 1
                Wend
                
                        bteditar.Enabled = True
                        bteliminar.Enabled = True
    End Sub
    ~~~
    ~~~ 
    Private Sub bteditar_Click()

        textcedula.Enabled = True
        textnombre.Enabled = True
        textapellido.Enabled = True
        textmodelo.Enabled = True
        btguardar.Enabled = True   
    End Sub
    ~~~ 
    ~~~ 
    Private Sub bteliminar_Click()
            datos.Rows(datos.Cells(2, 6)).EntireRow.Delete
            datos.Cells(1, 6) = datos.Cells(1, 6) - 1
            textcedula.Text = ""
            textnombre.Text = ""
            textapellido.Text = ""
            textmodelo.Text = ""
    End Sub
    ~~~ 
    ~~~ 
    Private Sub btguardar_Click()
            fila = datos.Cells(1, 6)
            datos.Cells(fila, 1) = textcedula.Text
            datos.Cells(fila, 2) = textnombre.Text
            datos.Cells(fila, 3) = textapellido.Text
            datos.Cells(fila, 4) = textmodelo.Text
            
            MsgBox "Datos registrados exitosamente", vbInformation, "Validado"
            textcedula.Text = Empty
            textnombre.Text = Empty
            textapellido.Text = Empty
            textmodelo.Text = Empty
            btguardar.Enabled = False
            btnuevo.Enabled = True
            textcedula.Enabled = False
            textnombre.Enabled = False
            textapellido.Enabled = False
            textmodelo.Enabled = False

    End Sub
    ~~~ 
    ~~~ 
    Private Sub btnuevo_Click()

            textcedula.Enabled = True
            textnombre.Enabled = True
            textapellido.Enabled = True
            textmodelo.Enabled = True
            
            btguardar.Enabled = True
            btnuevo.Enabled = False
            textcedula.SetFocus
            datos.Cells(1, 6) = datos.Cells(1, 6) + 1
            datos.Cells(2, 6) = datos.Cells(1, 6)

    End Sub

    ~~~ 



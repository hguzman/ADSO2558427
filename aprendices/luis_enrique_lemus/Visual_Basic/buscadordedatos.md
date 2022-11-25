## Buscador de Datos con Formulario
~~~

Private Sub btnClientes_Click()
    frmRegistro.Show
    frmMenu.Hide
End Sub


Private Sub btnBuscar_Click()
    a = 4
    sw = True
    
    ced = Int(InputBox("Ingrese la Cedula a buscar:"))
    
    While sw
        If ced = datos.Cells(a, 4) Then
            nom = datos.Cells(a, 2)
            ape = datos.Cells(a, 3)
            ced = datos.Cells(a, 4)
            tel = datos.Cells(a, 5)
            
            sw = False
            frmRegistro.txtNombre.Text = nom
            frmRegistro.txtApellido.Text = ape
            frmRegistro.txtTelefono.Text = tel
            frmRegistro.txtCedula.Text = ced
        Else
            If datos.Cells(a, 4) = "" Then
                MsgBox "Su cedula no esta registrada"
                sw = False
            End If
        End If
        datos.Cells(3, 8) = a
        a = a + 1

    Wend
    
    btneditar.Enabled = True
    btneliminar.Enabled = True
End Sub

Private Sub btneditar_Click()
    txtNombre.Enabled = True
    txtApellido.Enabled = True
    txtCedula.Enabled = False
    txtTelefono.Enabled = True
    btnGuardar.Enabled = True
End Sub

Private Sub btneliminar_Click()
    datos.Rows(datos.Cells(3, 8)).EntireRow.Delete
    datos.Cells(2, 8) = datos.Cells(2, 8) - 1
    txtNombre.Text = ""
    txtApellido.Text = ""
    txtCedula.Text = ""
    txtTelefono.Text = ""
End Sub

Private Sub btnGuardar_Click()
    fila = datos.Cells(3, 8)
    datos.Cells(fila, 2) = txtNombre.Text
    datos.Cells(fila, 3) = txtApellido.Text
    datos.Cells(fila, 4) = txtCedula.Text
    datos.Cells(fila, 5) = txtTelefono.Text
    MsgBox "Todo Registrado"
    txtNombre.Text = Empty
    txtApellido.Text = Empty
    txtCedula.Text = Empty
    txtTelefono.Text = Empty
    btnGuardar.Enabled = False
    btnBuscar.Enabled = True
    btnNuevo.Enabled = True
    txtNombre.Enabled = False
    txtApellido.Enabled = False
    txtCedula.Enabled = False
    txtTelefono.Enabled = False
End Sub

Private Sub btnNuevo_Click()
    txtNombre.Enabled = True
    txtApellido.Enabled = True
    txtCedula.Enabled = True
    txtTelefono.Enabled = True
    btnGuardar.Enabled = True
    btnNuevo.Enabled = False
    btneliminar.Enabled = False
    btneditar.Enabled = False
    btnBuscar.Enabled = False
    txtNombre.Text = Empty
    txtApellido.Text = Empty
    txtCedula.Text = Empty
    txtTelefono.Text = Empty
    txtNombre.SetFocus
    datos.Cells(2, 8) = datos.Cells(2, 8) + 1
    datos.Cells(3, 8) = datos.Cells(2, 8)
End Sub

~~~
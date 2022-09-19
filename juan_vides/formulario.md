Private Sub btnbuscar_Click()
    x = 3
    sw = True
    nombre = txtnombre.Text
    cedula = txtcedula.Text
    celular = txtcelular.Text
    edad = txtedad.Text
    While sw
        If nombre = reg.Cells(x, 1) Then
            cedula = reg.Cells(x, 2)
            celular = reg.Cells(x, 3)
            edad = reg.Cells(x, 4)
            txtnombre.Text = nombre
            txtcedula.Text = cedula
            txtcelular.Text = celular
            txtedad.Text = edad
            sw = False
        End If
        If x = 20 Then
            MsgBox ("No esta registrado")
            sw = False
        End If
    x = x + 1
    Wend
End Sub

Private Sub btnguardar_Click()
    fila = reg.Cells(1, 16)
    reg.Cells(fila, 1) = txtnombre.Text
    reg.Cells(fila, 2) = txtcedula.Text
    reg.Cells(fila, 3) = txtcelular.Text
    reg.Cells(fila, 4) = txtedad.Text
    MsgBox "Registro guardado con exito"
    txtnombre.Text = Empty
    txtcedula.Text = Empty
    txtcelular.Text = Empty
    txtedad.Text = Empty
    btnnuevo.Enabled = True
    btnguardar.Enabled = False
    btnbuscar.Enabled = False
End Sub

Private Sub btnnuevo_Click()
    frmreg.Caption = "Nuevo registro"
    txtnombre.Enabled = True
    txtcedula.Enabled = True
    txtcelular.Enabled = True
    txtedad.Enabled = True
    btnguardar.Enabled = True
    btnbuscar.Enabled = True
    btnnuevo.Enabled = False
    txtnombre.SetFocus
    reg.Cells(1, 16) = reg.Cells(1, 16) + 1
End Sub

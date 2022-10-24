```
Private Sub btnbuscar_Click()
    frmbuscar.Show
    btneditar.Enabled = True
    btneliminar.Enabled = True
    txtnombre.Enabled = False
    txtcedula.Enabled = False
    txtcelular.Enabled = False
    txtedad.Enabled = False
    
End Sub

Private Sub btneditar_Click()
    txtnombre.Enabled = True
    txtcedula.Enabled = False
    txtcelular.Enabled = True
    txtedad.Enabled = True
    txtnombre.SetFocus
    btnguardar.Enabled = True
    btnnuevo.Enabled = False
    btnbuscar.Enabled = False
    btneditar.Enabled = False
    btneliminar.Enabled = False
    
    
End Sub

Private Sub btneliminar_Click()
    actual = reg.Cells(2, 16)
    reg.Rows(actual).EntireRow.Delete
    txtnombre.Text = Empty
    txtcedula.Text = Empty
    txtcelular.Text = Empty
    txtedad.Text = Empty
    reg.Cells(1, 16) = reg.Cells(1, 16) - 1
    MsgBox "Sus datos han sido borrados"
    btneditar.Enabled = False
    btneliminar.Enabled = False
End Sub

Private Sub btnguardar_Click()
    fila = reg.Cells(2, 16)
    reg.Cells(fila, 1) = txtcedula.Text
    reg.Cells(fila, 2) = txtnombre.Text
    reg.Cells(fila, 3) = txtcelular.Text
    reg.Cells(fila, 4) = txtedad.Text
    MsgBox "Registro guardado con exito"
    txtnombre.Text = Empty
    txtcedula.Text = Empty
    txtcelular.Text = Empty
    txtedad.Text = Empty
    btnnuevo.Enabled = True
    btnguardar.Enabled = False
    btnbuscar.Enabled = True
    txtnombre.Enabled = False
    txtcedula.Enabled = False
    txtcelular.Enabled = False
    txtedad.Enabled = False
    
    
End Sub


Private Sub btnnuevo_Click()
    frmreg.Caption = "Nuevo registro"
    txtnombre.Enabled = True
    txtcedula.Enabled = True
    txtcelular.Enabled = True
    txtedad.Enabled = True
    txtnombre.Text = Empty
    txtcedula.Text = Empty
    txtcelular.Text = Empty
    txtedad.Text = Empty
    btnguardar.Enabled = True
    btnbuscar.Enabled = False
    btnnuevo.Enabled = False
    txtcedula.SetFocus
    reg.Cells(1, 16) = reg.Cells(1, 16) + 1
    reg.Cells(2, 16) = reg.Cells(1, 16)
End Sub
```

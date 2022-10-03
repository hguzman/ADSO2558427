```
    
    Private Sub btnnuevo_Click()
    Txtcedula.Enabled = True
    Txtnombre.Enabled = True
    Txtcorreo.Enabled = True
    Txttelefono.Enabled = True
    frmreg.Caption = "Nuevo Registro"
    Txtnombre.Text = Empty
    Txtcedula.Text = Empty
    Txtcorreo.Text = Empty
    Txttelefono.Text = Empty
    btnGuardar.Enabled = True
    btnBuscar.Enabled = False
    btnNuevo.Enabled = False
    Txtcedula.SetFocus
    datos.Cells(1, 7) = datos.Cells(1, 7) + 1
    datos.Cells(2, 7) = datos.Cells(1, 7)
    
    private sub btnGuardar_Click()
    fila = datos.Cells(2, 7)
    datos.Cells(fila, 1) = Txtcedula.Text
    datos.Cells(fila, 2) = Txtnombre.Text
    datos.Cells(fila, 3) = Txtcorreo.Text
    datos.Cells(fila, 4) = Txttelefono.Text
    MsgBox " datos  guardado"
    Txtcedula.Text = Empty
    Txtnombre.Text = Empty
    Txtcorreo.Text = Empty
    Txttelefono.Text = Empty
    
    private sub  btnbuscar_Click()
    frmbuscar.Show
    btneditar.Enabled = True
    btneliminar.Enabled = True
    Txtnombre.Enabled = False
    Txtcedula.Enabled = False
    Txtcorreo.Enabled = False
    Txttelefono.Enabled = False
    
    private sub btneditar_Click()
    Txtnombre.Enabled = True
    Txtcedula.Enabled = True
    Txtcorreo.Enabled = True
    Txttelefono.Enabled = True
    Txtnombre.SetFocus
    btnNuevo.Enabled = False
    btneliminar.Enabled = False
    btnBuscar.Enabled = False
    btneditar.Enabled = False
    btnGuardar.Enabled = True
    Txtcedula.Enabled = False
    
    private sub btneliminar_Click()
    actual = datos.Cells(2, 7)
    datos.Rows(actual).EntireRow.Delete
    Txtcedula.Text = Empty
    Txtnombre.Text = Empty
    Txtcorreo.Text = Empty
    Txttelefono.Text = Empty
    datos.Cells(1, 7) = datos.Cells(1, 7) - 1
    MsgBox " eliminado"
    btneditar.Enabled = False
    btneliminar.Enabled = False
```
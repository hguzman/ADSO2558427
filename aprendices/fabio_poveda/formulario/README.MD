# Formulario en Visual

~~~
Private Sub btnnuevo_Click()
    txtcedula.Enabled = True
    txtnombre.Enabled = True
    txtcorreo.Enabled = True
    txttelefono.Enabled = True
    frmreg.Caption = "Nuevo Registro"
    txtnombre.Text = Empty
    txtcedula.Text = Empty
    txtcorreo.Text = Empty
    txttelefono.Text = Empty
    btnguardar.Enabled = True
    btnnuevo.Enabled = False
    btnbuscar.Enabled = False
    txtcedula.SetFocus
    datos.Cells(1, 7) = datos.Cells(1, 7) + 1
    datos.Cells(2, 7) = datos.Cells(1, 7)
    
Private Sub btnGuardar_Click()
    fila = datos.Cells(2, 7)
    datos.Cells(fila, 1) = txtcedula.Text
    datos.Cells(fila, 2) = txtnombre.Text
    datos.Cells(fila, 3) = txtcorreo.Text
    datos.Cells(fila, 4) = txttelefono.Text
    MsgBox "Datos guardados con exito"
    txtcedula.Text = Empty
    txtnombre.Text = Empty
    txtcorreo.Text = Empty
    txttelefono.Text = Empty
    btnGuardar.Enabled = False
    btnNuevo.Enabled = True
    btnBuscar.Enabled = True
    txtcedula.Enabled = False
    txtnombre.Enabled = False
    txtcorreo.Enabled = False
    txttelefono.Enabled = False

Private Sub btnbuscar_Click()
    frmbuscar.Show
    btneditar.Enabled = True
    btneliminar.Enabled = True
    txtnombre.Enabled = False
    txtcedula.Enabled = False
    txtcorreo.Enabled = False
    txttelefono.Enabled = False

Private Sub btneditar_Click()
    txtnombre.Enabled = True
    txtcedula.Enabled = True
    txtcorreo.Enabled = True
    txttelefono.Enabled = True
    txtnombre.SetFocus
    btnNuevo.Enabled = False
    btneliminar.Enabled = False
    btnBuscar.Enabled = False
    btneditar.Enabled = False
    btnGuardar.Enabled = True
    txtcedula.Enabled = False

Private Sub btneliminar_Click()
    actual = datos.Cells(2, 7)
    datos.Rows(actual).EntireRow.Delete
    txtcedula.Text = Empty
    txtnombre.Text = Empty
    txtcorreo.Text = Empty
    txttelefono.Text = Empty
    datos.Cells(1, 7) = datos.Cells(1, 7) - 1
    MsgBox "Datos eliminados"
    btneditar.Enabled = False
    btneliminar.Enabled = False
~~~

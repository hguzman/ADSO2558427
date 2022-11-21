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
---
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
---
Private Sub btneliminar_Click()
    actual = reg.Cells(2, 15)
    reg.Rows(actual).EntireRow.Delete
    txtnombre.Text = Empty
    txtcedula.Text = Empty
    txtcelular.Text = Empty
    txtedad.Text = Empty
    reg.Cells(1, 15) = reg.Cells(1, 15) - 1
End Sub
---
Private Sub btnguardar_Click()
    fila = reg.Cells(2, 16)
    reg.Cells(fila, 1) = txtcedula.Text
    reg.Cells(fila, 2) = txtnombre.Text
    reg.Cells(fila, 3) = txtcelular.Text
    reg.Cells(fila, 4) = txtedad.Text
    MsgBox "se registro con exito"
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
---

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
    reg.Cells(1, 15) = reg.Cells(1, 15) + 1
    reg.Cells(2, 15) = reg.Cells(1, 15)
End Sub
---
Private Sub btnbuscar_Click()
    x = 3
    sw = True
    cedula = txtbuscar.Text
    While sw
        If txtbuscar.Text = reg.Cells(x, 1) Then
            nombre = reg.Cells(x, 2)
            celular = reg.Cells(x, 3)
            edad = reg.Cells(x, 4)
            frmreg.txtnombre.Text = nombre
            frmreg.txtcedula.Text = cedula
            frmreg.txtcelular.Text = celular
            frmreg.txtedad.Text = edad
            reg.Cells(2, 15) = x
            sw = False
            
        End If
        If x = 20 Then
            MsgBox ("No se encuentra registrado")
            sw = False
        End If
    x = x + 1
    Wend
    frmbuscar.Hide
    txtbuscar.Text = Empty
    
End Sub
---
``` 
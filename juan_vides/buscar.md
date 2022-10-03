``` 
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
            reg.Cells(2, 16) = x
            sw = False
            
        End If
        If x = 20 Then
            MsgBox ("No esta registrado")
            sw = False
        End If
    x = x + 1
    Wend
    frmbuscar.Hide
    txtbuscar.Text = Empty
    
End Sub
```

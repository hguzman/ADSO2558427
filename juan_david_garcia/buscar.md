```
Private Sub btnbuscar_Click()
    x = 3
    sw = True
    cedula = Txtbus.Text
    While sw
        If Txtbus.Text = datos.Cells(x, 1) Then
            nombre = datos.Cells(x, 2)
            correo = datos.Cells(x, 3)
            telefono = datos.Cells(x, 4)
            frmreg.Txtnombre = nombre
            frmreg.Txtcedula = cedula
            frmreg.Txtcorreo = correo
            frmreg.Txttelefono = telefono
            datos.Cells(2, 7) = x
            sw = False
        End If
        If x = 20 Then
            MsgBox ("No esta registrado")
            sw = False
        End If
    x = x + 1
    Wend
    frmbuscar.Hide
    Txtbus.Text = Empty
    
End Sub
```
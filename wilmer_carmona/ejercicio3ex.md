``` 


Private Sub bteditar_Click()

        Txtcedula.Enabled = False
        Txtnombre.Enabled = True
        Txtapellido.Enabled = True
        Txtdireccion.Enabled = True
        Txtciudad.Enabled = True
        btneditar.Enabled = True

End Sub

Private Sub btneliminar_Click()

         datos.Rows(datos.Cells(2, 8)).EntireRow.Delete
         datos.Cells(2, 8) = datos.Cells(2, 8) - 1
         Txtnombre.Text = ""
         Txtapellido.Text = ""
         Txtdireccion.Text = ""
         Txtciudad.Text = ""
         Txtcedula.Text = ""
         MsgBox "Los datos Se exitosamente"

End Sub

Private Sub btnuevo_Click()

         Txtcedula.Enabled = True
         Txtnombre.Enabled = True
         Txtapellido.Enabled = True
         Txtciudad.Enabled = True
         Txtdireccion.Enabled = True
         btnguardar.Enabled = True
         btnnuevo.Enabled = True
         btneditar.Enabled = False
         btneliminar.Enabled = False
         btnbuscar.Enabled = False
         Txtcedula.SetFocus
         datos.Cells(2, 8) = datos.Cells(2, 8) + 1
         datos.Cells(1, 8) = datos.Cells(2, 8)

End Sub

Private Sub btguardar_Click()

        fila = datos.Cells(2, 8)
        datos.Cells(fila, 1) = Txtnombre.Text
        datos.Cells(fila, 2) = Txtapellido.Text
        datos.Cells(fila, 3) = Txtdireccion.Text
        datos.Cells(fila, 4) = Txtciudad.Text
        datos.Cells(fila, 5) = Txtcedula.Text
        MsgBox "Datos registrados correctamente"
        btnnuevo.Enabled = True
        btnguardar.Enabled = True
        btneditar.Enabled = False
        btnbuscar.Enabled = True
        btneliminar.Enabled = False
        Txtcedula.Text = Empty
        Txtciudad.Text = Empty
        Txtdireccion.Text = Empty
        Txtapellido.Text = Empty
        Txtnombre.Text = Empty
        datos.Cells(1, 8) = datos.Cells(1, 8) + 1
        datos.Cells(2, 8) = datos.Cells(1, 8)


End Sub
Private Sub btbuscar_Click()
      w = 3
      sw = True
      ced = Int(InputBox("Ingrese el numero de la cedula"))

      While sw
        If ced = datos.Cells(w, 5) Then
            nombre = datos.Cells(w, 1)
            apellido = datos.Cells(w, 2)
            direccion = datos.Cells(w, 3)
            ciudad = datos.Cells(w, 4)
            cedula = datos.Cells(w, 5)

            Txtnombre.Text = nombre
            Txtapellido.Text = apellido
            Txtdireccion.Text = direccion
            Txtciudad.Text = ciudad
            Txtcedula.Text = cedula
            sw = False
        Else
            If datos.Cells(w, 5) = "" Then
                MsgBox "el numero de cedula no se encuentra"
                sw = False
            End If
        End If
        datos.Cells(2, 8) = w
        w = w + 1

      Wend
    Txtcedula.Enabled = False
    Txtnombre.Enabled = False
    Txtapellido.Enabled = False
    Txtciudad.Enabled = False
    Txtdireccion.Enabled = False
      btnguardar.Enabled = True
      btneditar.Enabled = True
      btneliminar.Enabled = True

End Sub


```

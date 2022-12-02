# Algoritmo formulario visual basic

Formulario Menu:

~~~
    Private Sub btnregistrate_Click()

        frmRegistro.Show

    End Sub
~~~

Formulario Registro:

~~~
    Private Sub btneditar_Click()

            Txtcedula.Enabled = False
            Txtnombre.Enabled = True
            Txtapellido.Enabled = True
            Txtdireccion.Enabled = True
            Txtciudad.Enabled = True
            btneditar.Enabled = True
                                        
    End Sub
~~~

~~~
    Private Sub btneliminar_Click()
            
            datos.Rows(datos.Cells(2, 8)).EntireRow.Delete
            datos.Cells(2, 8) = datos.Cells(2, 8) - 1
            Txtnombre.Text = ""
            Txtapellido.Text = ""
            Txtdireccion.Text = ""
            Txtciudad.Text = ""
            Txtcedula.Text = ""
            MsgBox "Los datos Se eliminaron correctamente"
            
    End Sub
~~~

~~~
    Private Sub btnnuevo_Click()
            
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
~~~

~~~
    Private Sub btnguardar_Click()

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
~~~

~~~
    Private Sub btnbuscar_Click()
        c = 3
        sw = True
        ced = Int(InputBox("Digite el numero de la cedula"))
        
        While sw
            If ced = datos.Cells(c, 5) Then
                nombre = datos.Cells(c, 1)
                apellido = datos.Cells(c, 2)
                direccion = datos.Cells(c, 3)
                ciudad = datos.Cells(c, 4)
                cedula = datos.Cells(c, 5)
                
                Txtnombre.Text = nombre
                Txtapellido.Text = apellido
                Txtdireccion.Text = direccion
                Txtciudad.Text = ciudad
                Txtcedula.Text = cedula
                sw = False
            Else
                If datos.Cells(c, 5) = "" Then
                    MsgBox "el numero de cedula no se encuentra en la base de datos"
                    sw = False
                End If
            End If
            datos.Cells(2, 8) = c
            c = c + 1

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
~~~
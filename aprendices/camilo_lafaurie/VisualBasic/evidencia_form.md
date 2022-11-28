## Camilo lafaurie 
## Evidencia form 

~~~
Private Sub btnbuscar_Click()
     a = 3
    sw = True
    b = Int(InputBox("digite la cedula que desea buscar"))
    
    While sw
        If b = Hoja1.Cells(a, 2) Then
            nom = Hoja1.Cells(a, 1)
            ced = Hoja1.Cells(a, 2)
            mar = Hoja1.Cells(a, 3)
            pla = Hoja1.Cells(a, 4)
            sw = False
            Txtnombre.Text = nom
            Txtmarca.Text = mar
            Txtplaca.Text = pla
            Txtcedula.Text = ced
            Txtnombre.Enabled = False
            Txtcedula.Enabled = False
            Txtmarca.Enabled = False
            Txtplaca.Enabled = False

        Else
            If Hoja1.Cells(a, 2) = "" Then
                MsgBox "Su cedula no esta registrada"
                sw = False
            End If
        End If
        Hoja1.Cells(2, 5) = a
        a = a + 1
        
    Wend
    
        btneditar.Enabled = True
        btneliminar.Enabled = True
        
End Sub
~~~
~~~
Private Sub btneditar_Click()
    Txtnombre.Enabled = True
    Txtmarca.Enabled = True
    Txtplaca.Enabled = True
    Txtcedula.Enabled = False
    btnguardar.Enabled = True
    
    
End Sub
~~~
~~~
Private Sub btneliminar_Click()
         Hoja1.Rows(Hoja1.Cells(2, 5)).EntireRow.Delete
         Hoja1.Cells(1, 5) = Hoja1.Cells(1, 5) - 1
         Txtnombre.Text = ""
         Txtcedula.Text = ""
         Txtmarca.Text = ""
         Txtplaca.Text = ""
         
         MsgBox "Los datos Se eliminaron correctamente"
         
End Sub
~~~
~~~
Private Sub btnguardar_Click()
    fila = Hoja1.Cells(2, 5)
    Hoja1.Cells(fila, 1) = Txtnombre.Text
    Hoja1.Cells(fila, 2) = Txtcedula.Text
    Hoja1.Cells(fila, 3) = Txtmarca.Text
    Hoja1.Cells(fila, 4) = Txtplaca.Text
    MsgBox "registro exitoso"
    Txtnombre.Text = Empty
    Txtcedula.Text = Empty
    Txtmarca.Text = Empty
    Txtplaca.Text = Empty
    btnguardar.Enabled = False
    btnnuevo.Enabled = True
    Txtnombre.Enabled = False
    Txtcedula.Enabled = False
    Txtmarca.Enabled = False
    Txtplaca.Enabled = False
    Hoja1.Cells(1, 5) = Hoja1.Cells(1, 5) + 1
    Hoja1.Cells(2, 5) = Hoja1.Cells(1, 5)
End Sub
~~~
~~~
Private Sub btnnuevo_Click()
    Txtnombre.Enabled = True
    Txtcedula.Enabled = True
    Txtmarca.Enabled = True
    Txtplaca.Enabled = True
    frmdatos.Caption = "new caption"
    
    btnguardar.Enabled = True
    btnnuevo.Enabled = False
    Txtnombre.SetFocus
    Hoja1.Cells(1, 5) = Hoja1.Cells(1, 5) + 1
End Sub
~~~
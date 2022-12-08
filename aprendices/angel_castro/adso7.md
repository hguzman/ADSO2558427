~~~

Private Sub btnbc_Click()
    fila = hojaregistro.Cells(1, 6)
    sw = True
    
    txtcedula.Text = Int(InputBox("ingresar numero de cedula"))
    
    While sw
        If txtcedula.Text = hojaregistro.Cells(fila, 3) Then
            txtnombre.Text = hojaregistro.Cells(fila, 1)
            txtapellido.Text = hojaregistro.Cells(fila, 2)
            txttel.Text = hojaregistro.Cells(fila, 4)
            sw = False
        Else
            MsgBox "documento no registrado"
            sw = False
        End If
        txtnombre.Enabled = False
        txtcedula.Enabled = False
        txtapellido.Enabled = False
        txttel.Enabled = False
    Wend
    fila = fila + 1

End Sub

Private Sub btnedt_Click()
    fila = hojaregistro.Cells(1, 6)
    sw = True
    
    txtcedula.Text = Int(InputBox("ingresar numero de documento"))
    
    While sw
      If txtcedula.Text = hojaregistro.Cells(fila, 3) Then
         txtnombnombre.Text = hojaregistro.Cells(fila, 1)
         txtapellido.Text = hojaregistro.Cells(fila, 2)
         txttel.Text = hojaregistro.Cells(fila, 4)
         sw = False
       Else
        MsgBox "documento no registrado"
        sw = False
       End If
       fila = fila + 1
       txtcedula.Enabled = True
       txtnombre.Enabled = True
       txtapellido.Enabled = True
       txttel.Enabled = True
    Wend
End Sub


Private Sub btnelm_Click()
    frmeli.Show
    
End Sub

Private Sub btngr_Click()
    fila = registro.Cells(1, 6)
    hojaregistro.Cells(fila, 1) = txtnombre.Text
    hojaregistro.Cells(fila, 2) = txtapellido.Text
    hojaregistro.Cells(fila, 3) = txtcedula.Text
    hojaregistro.Cells(fila, 4) = txttel.Text
    
    MsgBox "registrado"
    
    txtnombre.Text = Empty
    txtapellido.Text = Empty
    txtcedula.Text = Empty
    txttel.Text = Empty
    btnnv.Enabled = True
    btngr.Enabled = False
    btnbc.Enabled = True
    btnedt.Enabled = True
    btnelm.Enabled = True
    txtnombe.Enabled = False
    txtapellido.Enabled = False
    txtcedula.Enabled = False
    txttel.Enabled = False

End Sub

Private Sub btnnv_Click()
    txtnombre.Enabled = True
    txtapellido.Enabled = True
    txtcedula.Enabled = True
    txttel.Enabled = True
    frmregistro.Caption = "se esta registrando"
    
    btnnv.Enabled = False
    btngr.Enabled = True
    btnbc.Enabled = False
    btnedt.Enabled = False
    btnelm.Enabled = False
    txtnombre.SetFocus
    hojaregistro.Cells(1, 6) = hojaregistro.Cells(1, 6) + 1
   
End Sub

Private Sub UserForm_Click()

End Sub
Private Sub btnap_Click()
  hojaregistro.Rows(hojaregistros.Cells(1, 6)).EntireRow.Delete
  hojaregistro.Cells(1, 6) = hojaregistro.Cells(1, 6) - 1
  txtnombre.Text = ""
  txtapellido.Text = ""
  txtcedula.Text = ""
  txttel.Text = ""
  MsgBox "los datos se eliminaron"

End Sub

Private Sub btneli_Click()
  fila = hojaregistro.Cells(1, 6)
    sw = True
    
    txtcedu.Text = Int(InputBox("ingresar numero de documento"))
    
    While sw
      If txtcedula.Text = hojaregistro.Cells(fila, 3) Then
         txtnombre.Text = hojaregistro.Cells(fila, 1)
         txtapellido.Text = hojaregistro.Cells(fila, 2)
         txttel.Text = hojaregistro.Cells(fila, 4)
         sw = False
       Else
        MsgBox "documento no registrado"
        sw = False
       End If
       fila = fila + 1
    Wend
End Sub
~~~
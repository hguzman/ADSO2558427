```
Private Sub btnbc_Click()
    fila = registro.Cells(1, 6)
    sw = True
    
    txtcedu.Text = Int(InputBox("ingrese numero de cedula"))
    
    While sw
        If txtcedu.Text = registro.Cells(fila, 3) Then
            txtnomb.Text = registro.Cells(fila, 1)
            txtape.Text = registro.Cells(fila, 2)
            txttel.Text = registro.Cells(fila, 4)
            sw = False
        Else
            MsgBox "numero de documento no registrado"
            sw = False
        End If
        txtnomb.Enabled = False
        txtcedu.Enabled = False
        txtape.Enabled = False
        txttel.Enabled = False
    Wend
    fila = fila + 1
End Sub
```
```
Private Sub btnedt_Click()
    fila = registro.Cells(1, 6)
    sw = True
    
    txtcedu.Text = Int(InputBox("ingrese numero de documento"))
    
    While sw
      If txtcedu.Text = registro.Cells(fila, 3) Then
         txtnomb.Text = registro.Cells(fila, 1)
         txtape.Text = registro.Cells(fila, 2)
         txttel.Text = registro.Cells(fila, 4)
         sw = False
       Else
        MsgBox "numero de documento no registrado"
        sw = False
       End If
       fila = fila + 1
       txtcedu.Enabled = True
       txtnomb.Enabled = True
       txtape.Enabled = True
       txttel.Enabled = True
    Wend
End Sub
```
```
Private Sub btnelm_Click()
    frmeli.Show
    
End Sub

Private Sub btngr_Click()
    fila = registro.Cells(1, 6)
    registro.Cells(fila, 1) = txtnomb.Text
    registro.Cells(fila, 2) = txtape.Text
    registro.Cells(fila, 3) = txtcedu.Text
    registro.Cells(fila, 4) = txttel.Text
    
    MsgBox "informacion registrada"
    
    txtnomb.Text = Empty
    txtape.Text = Empty
    txtcedu.Text = Empty
    txttel.Text = Empty
    btnnv.Enabled = True
    btngr.Enabled = False
    btnbc.Enabled = True
    btnedt.Enabled = True
    btnelm.Enabled = True
    txtnomb.Enabled = False
    txtape.Enabled = False
    txtcedu.Enabled = False
    txttel.Enabled = False
End Sub
```
```
Private Sub btnnv_Click()
    txtnomb.Enabled = True
    txtape.Enabled = True
    txtcedu.Enabled = True
    txttel.Enabled = True
    frmregistro.Caption = "registrando"
    
    btnnv.Enabled = False
    btngr.Enabled = True
    btnbc.Enabled = False
    btnedt.Enabled = False
    btnelm.Enabled = False
    txtnomb.SetFocus
    registro.Cells(1, 6) = registro.Cells(1, 6) + 1
End Sub
```
```
Private Sub UserForm_Click()

End Sub
Private Sub btnap_Click()
  registro.Rows(registro.Cells(1, 6)).EntireRow.Delete
  registro.Cells(1, 6) = registro.Cells(1, 6) - 1
  txtnomb.Text = ""
  txtape.Text = ""
  txtcedu.Text = ""
  txttel.Text = ""
  MsgBox "los datos se eliminaron"
End Sub
```
```
Private Sub btneli_Click()
  fila = registro.Cells(1, 6)
    sw = True
    
    txtcedu.Text = Int(InputBox("ingrese numero de documento"))
    
    While sw
      If txtcedu.Text = registro.Cells(fila, 3) Then
         txtnomb.Text = registro.Cells(fila, 1)
         txtape.Text = registro.Cells(fila, 2)
         txttel.Text = registro.Cells(fila, 4)
         sw = False
       Else
        MsgBox "numero de documento no registrado"
        sw = False
       End If
       fila = fila + 1
    Wend
End Sub
```
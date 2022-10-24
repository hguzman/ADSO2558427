## formulario

~~~
Private Sub btneliminar_Click()
 
  actual = Hoja1.Cells(2, 6)
  Hoja1.Rows(actual).EntireRow.Delete
  TXTnombre.Text = Empty
  TXTid.Text = Empty
  TXTcelular.Text = Empty
  COMsexo.Text = Empty
  Hoja1.Cells(1, 6) = Hoja1.Cells(1, 6) - 1
  
  
End Sub

Private Sub CMDguardar_Click()
   
   Worksheets("base de datos").Range("A2").EntireRow.Insert
   Range("A2") = TXTid.Value
   Range("B2") = TXTnombre.Value
   Range("C2") = TXTcelular.Value
   Range("D2") = COMsexo.Value
   
   TXTid = Empty
   TXTnombre = Empty
   TXTcelular = Empty
   COMsexo = Empty
   Hoja1.Cells(1, 6) = Hoja1.Cells(1, 6) + 1
   com = Hoja1.Cells(2, 6)
   
End Sub


Private Sub COMbuscar_Click()
    fila = 2
    com = Hoja1.Cells(2, 6)
    sw = True
    While sw
        
        If Hoja1.Cells(fila, 1) = TXTid.Text Then
            
            TXTnombre.Text = Hoja1.Cells(fila, 2)
            TXTcelular.Text = Hoja1.Cells(fila, 3)
            COMsexo.Text = Hoja1.Cells(fila, 4)
            sw = False
        Else
           
           If Hoja1.Cells(2, 1) = "" Then
                MsgBox "no se encontro nada"
                sw = False
           End If
        End If
            fila = fila + 1
            com = com + 1
    Wend
        fila = fila - 1
        Hoja1.Cells(2, 6) = fila
         
                     
    
End Sub

Private Sub COMeditar_Click()
       
    
    TXTnombre.Enabled = True
    TXTid.Enabled = False
    TXTcelular.Enabled = True
    COMsexo.Enabled = True
    TXTnombre.SetFocus
    CMDguardar.Enabled = True
    COMbuscar.Enabled = False
    COMeditar.Enabled = False
    
    
        
End Sub

Private Sub COMnuevo_Click()

     frm_ingreso.Caption = "nuevo registro"
     TXTnombre.Enabled = False
     TXTid.Enabled = True
     TXTcelular.Enabled = True
     COMsexo.Enabled = True
     TXTnombre.Text = Empty
     TXTid.Text = Empty
     TXTcelular.Text = Empty
     COMsexo.Text = Empty
     CMDguardar.Enabled = True
     COMbuscar.Enabled = False
     COMeditar.Enabled = False
     TXTid.SetFocus
     Hoja1.Cells(1, 6) = Hoja1.Cells(1, 6) + 1
     Hoja1.Cells(2, 6) = Hoja1.Cells(1, 6)
     
     
     
End Sub

Private Sub UserForm_Initialize()
   COMsexo.List = Worksheets("lista").Range("A2:A3").Value
   
End Sub

~~~
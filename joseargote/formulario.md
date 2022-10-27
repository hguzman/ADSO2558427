```
Private Sub btnBuscar_Click()
         frmbuscar.Show
       btnEditar.Enabled = True
     btnEliminar.Enabled = True
      Txtnombre.Enabled = False
       Txtcedula.Enabled = False
        Txtcorreo.Enabled = False
         Txttelefono.Enabled = False

    
End Sub

Private Sub btneditar_Click()
     Txtnombre.Enabled = True
      Txtcedula.Enabled = False
      Txtcorreo.Enabled = True
       Txttelefono.Enabled = True
       Txtnombre.SetFocus
         btnGuardar.Enabled = True
     btnNuevo.Enabled = False
      btnBuscar.Enabled = False
     btnEditar.Enabled = False
    btnEliminar.Enabled = False
        
       
       

End Sub

Private Sub btnEliminar_Click()
      actual = datos.Cells(1, 8)
        datos.Rows(actual).EntireRow.Delete
        Txtnombre.Text = Empty
        Txtcedula.Text = Empty
        Txtcorreo.Text = Empty
        Txttelefono.Text = Empty
          reg.Cells(1, 8) = reg.Cells(1, 8) - 1
          

End Sub

Private Sub btnGuardar_Click()
       fila = datos.Cells(1, 7)
       datos.Cells(fila, 1) = Txtnombre.Text
      datos.Cells(fila, 2) = Txtcedula.Text
        datos.Cells(fila, 3) = Txtcorreo.Text
      datos.Cells(fila, 4) = Txttelefono.Text
    MsgBox "Tus datos se han guardado"
     Txtnombre.Text = Empty
      Txtcedula.Text = Empty
       Txtcorreo.Text = Empty
        Txttelefono.Text = Empty
     btnGuardar.Enabled = False
    btnNuevo.Enabled = True
    btnBuscar.Enabled = False
    
    
    
    
    
End Sub

Private Sub btnnuevo_Click()
     Txtnombre.Enabled = True
      Txtcedula.Enabled = True
     Txtcorreo.Enabled = True
    Txttelefono.Enabled = True
    frmreg.Caption = "Nuevo Registro"
     btnGuardar.Enabled = True
    btnBuscar.Enabled = True
      btnNuevo.Enabled = True
      
    
     Txtnombre.SetFocus
    datos.Cells(1, 7) = datos.Cells(1, 7) + 1
    
    
    
    
    
    
End Sub
```

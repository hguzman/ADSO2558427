``` 
Private Sub B_Buscar_Click()
    Busqueda.Show
End Sub

Private Sub B_Guardar_Click()
    Formulario_Registro.Caption = "Registro"
    fila = Registro.Cells(1, 5)
    Registro.Cells(fila, 1) = TextBox_Propietario.Text
    Registro.Cells(fila, 2) = TextBox_Cedula.Text
    Registro.Cells(fila, 3) = TextBox_Color.Text
    Registro.Cells(fila, 4) = TextBox_Modelo.Text
    TextBox_Propietario = ""
    TextBox_Cedula = ""
    TextBox_Color = ""
    TextBox_Modelo = ""
    TextBox_Propietario.Enabled = False
    TextBox_Cedula.Enabled = False
    TextBox_Color.Enabled = False
    TextBox_Modelo.Enabled = False
    B_Nuevo.Enabled = True
    B_Guardar.Enabled = False
    Registro.Cells(1, 5) = Registro.Cells(1, 5) + 1
End Sub

Private Sub B_Nuevo_Click()
    TextBox_Propietario.Enabled = True
    TextBox_Cedula.Enabled = True
    TextBox_Color.Enabled = True
    TextBox_Modelo.Enabled = True
    Formulario_Registro.Caption = "Nuevo registro"
    B_Nuevo.Enabled = False
    B_Buscar.Enabled = True
    B_Guardar.Enabled = True
    TextBox_Propietario.SetFocus
End Sub
``` 
``` 
Private Sub B_Buscar_Click()
    B_Eliminar.Enabled = True
    B_Editar.Enabled = True
    Formulario_registro.Hide
    Buscar.Show
End Sub

Private Sub B_Editar_Click()
    MsgBox "Estás editando el último registro"
    Formulario_registro.Caption = "Editar"
    TextBox_Propietario.Enabled = True
    TextBox_Cedula.Enabled = True
    TextBox_Color.Enabled = True
    TextBox_Modelo.Enabled = True
    B_Guardar.Enabled = True
    Registro.Cells(1, 5) = Registro.Cells(1, 5) - 1
    B_Editar.Enabled = False
End Sub

Private Sub B_Eliminar_Click()
    MsgBox "Has eliminado el último registro"
    Registro.Rows(Registro.Cells(1, 5)).EntireRow.Delete
    Registro.Cells(1, 5) = Registro.Cells(1, 5) - 1
End Sub

Private Sub B_Guardar_Click()
    MsgBox "Guardado con éxito"
    Formulario_registro.Caption = "Registro"
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
    B_Editar.Enabled = True
    B_Eliminar.Enabled = True
    Registro.Cells(1, 5) = Registro.Cells(1, 5) + 1
End Sub

Private Sub B_Nuevo_Click()
    B_Nuevo.Enabled = False
    TextBox_Propietario.Enabled = True
    TextBox_Cedula.Enabled = True
    TextBox_Color.Enabled = True
    TextBox_Modelo.Enabled = True
    Formulario_registro.Caption = "Nuevo registro"
    B_Buscar.Enabled = False
    B_Guardar.Enabled = True
    B_Editar.Enabled = False
    B_Eliminar.Enabled = False
    TextBox_Cedula.SetFocus
End Sub
``` 
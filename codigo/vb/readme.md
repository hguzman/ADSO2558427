# CRUD VB

Permite registrar información en una Hoja de Calculo

```
Private Sub btnBuscar_Click()
  frmBuscar.Show
End Sub

Private Sub btnEditar_Click()
    activar_controles (True)
End Sub

Private Sub btnGuardar_Click()
    puntero = configuracion.Cells(1, 2)
    datos.Cells(puntero, 1) = txtCedula.Text
    datos.Cells(puntero, 2) = txtNombre.Text
    datos.Cells(puntero, 3) = txtEdad.Text
    activar_controles (False)
    MsgBox "Todo correcto"
End Sub

Private Sub btnNuevo_Click()
    configuracion.Cells(2, 2) = configuracion.Cells(2, 2) + 1
    configuracion.Cells(1, 2) = configuracion.Cells(2, 2)
    activar_controles (True)
    limpiar
    txtCedula.SetFocus
End Sub


Function activar_controles(valor)
    txtCedula.Enabled = valor
    txtNombre.Locked = valor
    txtEdad.Enabled = valor
    btnGuardar.Enabled = valor
    btnBuscar.Enabled = Not valor
    btnNuevo.Enabled = Not valor
End Function

Function limpiar()
    txtCedula.Text = Empty
    txtNombre.Text = ""
    txtEdad.Text = Empty
End Function

Private Sub CommandButton1_Click()
Application.Visible = True
End Sub

Private Sub UserForm_Click()

End Sub

// Buscar

Private Sub btnBuscar_Click()
    i = 3
    ultimo = configuracion.Cells(2, 2)
    encontrado = False
    While i <= ultimo And encontrado = False
        If datos.Cells(i, 1) = frmBuscar.txtCedula.Text Then
           encontrado = True
        Else
            i = i + 1
        End If
    Wend
    If encontrado Then
        formPersonas.txtCedula.Text = datos.Cells(i, 1)
        formPersonas.txtNombre.Text = datos.Cells(i, 2)
        formPersonas.txtEdad.Text = datos.Cells(i, 3)
        configuracion.Cells(1, 2) = i
        frmBuscar.Hide
    Else
        MsgBox "Nada... no encontrado"
    End If

End Sub

// Abrir aplicacion sin excel

Private Sub Workbook_Open()
    Application.Visible = False
    formPersonas.Show
End Sub
```

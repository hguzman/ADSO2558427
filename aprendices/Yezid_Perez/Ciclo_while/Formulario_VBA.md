```
Private Sub Buttnuevo_Click()
    textserie.Enabled = True
    textnombre.Enabled = True
    textdireccion.Enabled = True
    textauto.Enabled = True
    Buttguardar.enable = True
    Buttnuevo.Enabled = False
    Buttbuscar.Enabled = False
    Butteditar.Enabled = False
    Butteliminar.Enabled = False
    textserie.SetFocus
    datos.Cells(1, 5) = datos.Cells(1, 5) + 1
    datos.Cells(2, 5) = datos.Cells(1, 5)
    
End Sub

Private Sub Buttbuscar_Click()
    p = 1
    n = 0
    lista = datos.Cells(1, 5) + 1
    buscar = Int(InputBox("ingrese numero de cedula"))
        sw = True
    While buscar <> serie And sw
        serie = datos.Cells(n, 1)
        n = n + 1
        p = p + 1
         
        If n = lista Then
        sw = False
            If busc <> serie Then
                MsgBox ("error en encontar el nombre")
            End If
        End If
    Wend
    n = n - 1
    datos.Cells(2, 5) = p
    nom = datos.Cells(n, 2)
    marca = datos.Cells(n, 3)
    If busc = serie Then
        txtserie = datos.Cells(n, 1)
        txtnombre = datos.Cells(n, 2)
        txtMarca = datos.Cells(n, 3)
    End If
    
End Sub

Private Sub Butteditar_Click()
    txtserie.Enabled = False
    txtnombre.Enabled = True
    txtMarca.Enabled = True
    puntero = datos.Cells(2, 5)
    btnEditar.Enabled = False
End Sub

Private Sub Butteliminar_Click()

    respuesta = MsgBox("¿Desea borrar?", vbQuestion + vbYesNo + vbDefaultButton2, "Mensaje")
    If respuesta = vbYes Then
        n = 2
        puntero = datos.Cells(2, 5)
        datos.Rows(puntero).EntireRow.Delete
        datos.Cells(1, 5) = datos.Cells(1, 5) - 1
        datos.Cells(2, 5) = datos.Cells(1, 5)
    End If

End Sub

Private Sub Buttguardar_Click()
    fila = datos.Cells(2, 5)
    datos.Cells(fila, 1) = textserie.Text
    datos.Cells(fila, 2) = textnombre.Text
    datos.Cells(fila, 3) = textdireccion.Text
    datos.Cells(fila, 4) = textauto.Text
    MsgBox ("Guardado exitosamente")
    textserie.Enabled = False
    textnombre.Enabled = False
    textdireccion.Enabled = False
    textauto.Enabled = False
    Buttguardar.Enabled = True
    Buttnuevo.Enabled = True
    Buttbuscar.Enabled = True
    Butteditar.Enabled = True
    Butteliminar.Enabled = True
    
End Sub

```
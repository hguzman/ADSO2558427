```
Private Sub nuevo_Click()

    Texnombre.Enabled = True
    Textcedula.Enabled = True
    Textedad.Enabled = True
    Textdireccion.Enabled = True
    Texttelefono.Enabled = True
    Textprofesion.Enabled = True
    
    guardar.Enabled = True
    nuevo.Enabled = False
    buscar.Enabled = False
    eliminar.Enabled = False
    editar.Enabled = False
    
    dato.Cells(1, 7) = dato.Cells(1, 7) + 1
    
End Sub
Private Sub editar_Click()

    Texnombre.Enabled = True
    Textcedula.Enabled = True
    Textedad.Enabled = True
    Textdireccion.Enabled = True
    Texttelefono.Enabled = True
    Textprofesion.Enabled = True
    
    guardar.Enabled = True
    nuevo.Enabled = False
    buscar.Enabled = False
    eliminar.Enabled = False
    editar.Enabled = False

    fila = dato.Cells(1, 7)
    
End Sub
Private Sub eliminar_Click()

    confirmacion = MsgBox("¿Desea borrar?", vbQuestion + vbYesNo + vbDefaultButton2, "Mensaje")
    
    If confirmacion = vbYes Then
    
        contador = dato.Cells(1, 7)
        
        dato.Rows(contador).EntireRow.Delete
        dato.Cells(1, 7) = dato.Cells(1, 7) - 1
        
        Texnombre.Enabled = Empty
        Textcedula.Enabled = Empty
        Textedad.Enabled = Empty
        Textdireccion.Enabled = Empty
        Texttelefono.Enabled = Empty
        Textprofesion.Enabled = Empty
        
    End If
    
End Sub
´´´

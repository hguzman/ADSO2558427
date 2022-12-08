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
Private Sub buscar_Click()
    a = 3
    b = True
    c = InputBox("digite numero de cedula")
    While b
        If c = dato.Cells(a, 2) Then
            Texnombre = dato.Cells(a, 1)
            Textedad = dato.Cells(a, 3)
            Textdireccion = dato.Cells(a, 4)
            Textdireccion = dato.Cells(a, 5)
            Textprofesion = dato.Cells(a, 6)
            MsgBox "encontrado"
            b = False
        End If
        If dato1.Cells(a, 3) = "" Then
            MsgBox "no encintrado"
            b = False
        End If
        a = a + 1
        Texnombre.Text = dato.Cells(a, 1)
        Textcedula.Text = dato.Cells(a, 2)
        Textedad.Text = dato.Cells(a, 3)
        Textdireccion.Text = dato.Cells(a, 4)
        Texttelefono.Text = dato.Cells(a, 5)
        Textprofesion.Text = dato.Cells(a, 6)
    Wend
End Sub

Private Sub guardar_Click()
    fila = dato1.Cells(1, 6)
    dato.Cells(fila, 1) = Texnombre.Text
    dato.Cells(fila, 2) = Textcedula.Text
    dato.Cells(fila, 3) = Textedad.Text
    dato.Cells(fila, 4) = Textdireccion.Text
    dato.Cells(fila, 5) = Texttelefono.Text
    dato.Cells(fila, 6) = Textprofesion.Text
    MsgBox "guardado"
    Texnombre.Text = Empty
    Textcedula.Text = Empty
    Textedad.Text = Empty
    Textdireccion.Text = Empty
    Texttelefono.Text = Empty
    Textprofesion.Text = Empty
    nuevo.Enabled = True
    buscar.Enabled = True
End Sub
´´´

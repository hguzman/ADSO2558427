Sub inicio
    a = 3
    sw = True
    nombre = Txtnombre.Text
    cedula = Txtcedula.Text
    While sw
    If nombre = datos.Cells(a, 1) Then
        cedula = datos.Cells(a, 3)
        sw = False
        MsgBox "el nombre es:" & nombre
    End If
    If a = 20 Then
    MsgBox " su cdedula no esta registrada"
    sw = False
    End If
    a = a + 1
    Wend
        
    
    
End Sub
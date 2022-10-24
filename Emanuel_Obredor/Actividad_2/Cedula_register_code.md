# Cédula register code
``` 
Sub inicio()
    c = 0
    fila = 3
    sw = True
    
    entrada = Int(InputBox("Ingrese número de cédula:"))
    
    While sw = True
        If entrada = Hoja1.Cells(fila, 2) Then
            MsgBox "El número de cédula ingresado (" & entrada & ") ubica a: " & Hoja1.Cells(fila, 1)
            sw = False
        Else
            c = c + 1
            fila = fila + 1
            sw = True
            If c = 2 Then
                MsgBox ("Error, cédula inexistente")
                sw = False
            End If
        End If
    Wend
End Sub
``` 
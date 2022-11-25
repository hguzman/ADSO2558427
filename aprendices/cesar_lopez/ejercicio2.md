```
Sub cedulas()
   
    fila = 2
    Identificacion = True
    
    cedula = Int(InputBox("Digite el numero de identifcación"))
    
    While Identificacion
        If cedula = Hoja1.Cells(fila, 2) Then
            nombre = Hoja1.Cells(fila, 1)
            MsgBox "su nombre es: " & nombre
            Identificacion = False
        Else
                MsgBox "El numero de identificación no se encuentra en la base de datos"
                Identificacion = False
                fila = fila + 1
        End If
    Wend
End Sub
```
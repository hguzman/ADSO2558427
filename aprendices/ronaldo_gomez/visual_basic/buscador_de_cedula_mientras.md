# Buscador de cedulas mientras que y switch

~~~
Sub ejercicio2()
    g = 2
    fila = 2
    Identificación = True
    
    ent = Int(InputBox("Digite el numero de identifcación"))
    
    While Identificación
        If ent = cedula.Cells(fila, 2) Then
            MsgBox (cedulas.Cells(fila, 1))
            Identificación = False
        Else
            g = g + 1
            fila = fila + 1
        
            If n = 24 Then
                MsgBox ("El numero de identificación no se encuentra en la base de datos")
                Identificación = False
            End If
        End If
    Wend
End Sub
~~~
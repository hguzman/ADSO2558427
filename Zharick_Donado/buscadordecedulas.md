## Buscador de cedulas (mientras que)

```
Sub tarea()
            ID = True
            fila = 2
            a = 0
            
            cedula = Int(InputBox("Digite el número de cedula"))
            
            While ID 
            
                    If cedula = lista.Cells(fila, 1) Then
                    nombre = lista.Cells(fila, 2)
                        ID = False
                        MsgBox "su nombre es: " & nombre
                        
                    Else
                        a = a + 1
                        fila = fila + 1
                        ID = True
                        If a = 20 Then
                            
                            MsgBox "cedula no encontrada"
                            ID = False
                        
                        End If
                           
                  End If
                    
            Wend
End Sub
```
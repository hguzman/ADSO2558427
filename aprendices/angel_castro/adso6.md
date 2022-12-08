```
Sub actividad()
    fl = 1
    sw = True
    
    cda = Int(InputBox("ingrese su cedula"))
    
    While sw
      If cda = Hoja1.Cells(fl, 2) Then
        nom = Hoja1.Cells(fl, 1)
        sw = False
        MsgBox "su nombre es: " & nom
      End If
      If fl = 5 Then
       MsgBox "documento no registrado"
       sw = False
      End If
      fl = fl + 1
    Wend
      
End Sub
```

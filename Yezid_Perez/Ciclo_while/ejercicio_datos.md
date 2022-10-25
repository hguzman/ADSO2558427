```
Sub datos()
   y = 2
   cedula = Int(InputBox("digite cedula: "))
   sw = True
   While sw
      If cedula = Hoja1.Cells(y, 1) Then
         nombre = Hoja1.Cells(y, 2)
         sw = False
         MsgBox "su nombre es: " & nombre
      End If         
      If y = 20 Then
         MsgBox ("no valido")
         sw = False
      End If     
          y = y + 1        
   Wend
      
End Sub
```
```
Sub recolecta()
 tr = 0
 sb = 0
 nb = 0
 a = 0
 vs = 0
 
 For e = 1 To 3
  a = Int(InputBox("ingrese una cantidad"))
    If a >= 1000 Then
        sb = sb + 1
      If a >= 10000 Then
        vs = vs + 1
      End If
    Else
      nb = nb + 1
    End If
    
  tr = tr + a
 
 Next e
 
 promedio = tr / sb
 MsgBox "si abono: " & sb
 MsgBox "no abono: " & nb
 MsgBox "abono mas de 10mil: " & vs
 MsgBox "total: " & tr
 MsgBox "promedio: " & promedio
 
End Sub
```
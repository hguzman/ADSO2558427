```
Sub b()
     m = 0
     i = 0
     While c <= 2999999
       m = Int(InputBox("cunto desea aportar"))
       c = c + m
       If m < 100000 Then
        am = am + 1
       Else
        am2 = am2 + 1
       End If
       If m = 0 Then
        no = no + 1
        i = i-1
       End If
        
       i = i + 1
     Wend
     
     vrp = c / i
     MsgBox "total recaudado por los estudiantes:" & c
     MsgBox "valor recaudado promedio:" & vrp
     MsgBox "estudiantes que aportaron:" & i
     MsgBox "estudiantes que no aportaron:" & no
     MsgBox "estudiantes que aportaron menos de 100000:" & am
     MsgBox "estudiantes que aportaron mas de 100000:" & am2
End Sub
```

```
Sub a()
    i = 2
    c = InputBox("nombre")
    f = 0
    
    While f <= 20
        If c = Hoja1.Cells(i, 2) Then
            MsgBox "encomtrado"
        Else
            MsgBox " no en contrado"
        End If
        f = f + 1
        i = i + 1
    Wend
End Sub
``` 

```
Sub a()
    i = 2
    c = InputBox("nombre")
    sw = False
    f = 0
    
    While f <= 20
        If c = Hoja1.Cells(i, 2) Then
            sw = True
            MsgBox "encomtrado"
        Else
            sw = False
            MsgBox " no en contrado"
        End If
        f = f + 1
        i = i + 1
    Wend
End Sub
``` 

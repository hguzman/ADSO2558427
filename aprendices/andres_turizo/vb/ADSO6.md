~~~
Sub datos()
    i = 1
    sw = True
    cedula = Int(InputBox("Digite la cedula"))
    While sw
        If cedula = base.Cells(i, 1) Then
            nombre = base.Cells(i, 2)
            sw = False
            MsgBox "Su nombre es " & nombre
        End If
        If i = 20 Then
            MsgBox "Su cédula no está registrada"
            sw = False
        End If
        i = i + 1
    Wend
    
End Sub
~~~

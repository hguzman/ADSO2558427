# CICLOWHILE


~~~
Sub donacion()
    c = 0
    x = 0
    a = 0
    y = 0
    While y <= 3000000
        pregunta = Int(InputBox("dinero aportado"))
        Select Case pregunta
            Case Is < 0
            Case Is = 0
                x = x + 1
            Case 1 To 10000
                c = c + 1
                y = y + pregunta
            Case Else
                c = c + 1
                a = a + 1
                y = y + pregunta
        End Select
    Wend
    promedio = y / c
    MsgBox ("Aportaron " & c)
    MsgBox ("No aportaron " & x)
    MsgBox ("La recolecta fue $" & y)
    MsgBox ("Promedio es $" & promedio)
    MsgBox (a & " dieron mas de $10.000")
End Sub
~~~

![Ver diagrama](/jaiderrojas/ciclowhile/img/FlowchartDiagram1.jpg)

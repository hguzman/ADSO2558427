# Ciclo MQ (1) Reccolecta en escuela

~~~
Sub aporte_estudiantes()
    aporte = 0
    noapor = 0
    masde = 0
    i = 0
    est = 0
    While i < 3000000
        aporte = Int(InputBox("Ingrese cuanto va a aportar"))
        If aporte < 0 Then
            MsgBox ("Error, el valor que ingreso no es valido")
        Else
            If aporte = 0 Then
                MsgBox ("El estudiante no aporto")
                noapor = noapor + 1
            End If
            If aporte > 0 Then
                i = aporte + i
                est = est + 1
            End If
            If aporte > 10000 Then
                masde = masde + 1
            End If
        End If
    Wend
    prom = i / est
    MsgBox ("El total aportado fue de: " & "$" & i)
    MsgBox ("Estudiantes que aportaron: " & est)
    MsgBox ("Estudiantes que aportaron más de $10.000: " & masde)
    MsgBox ("Estudiantes que no aportaron: " & noapor)
    MsgBox ("El promedio del valor de los estudiantes que aportaron es de: " & "$" & prom)
End Sub
~~~

___

# Diagrama de flujo

![Ver diagrama](/fabio_poveda/aporte_estudiante/img/FlowchartDiagram1.jpg)
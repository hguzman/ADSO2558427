# Ciclo While 

~~~
Sub presupuesto()
    abono = 0
    aporto = 0
    noaporto = 0
    masde = 0
    tot = 0
    While abono < 3000000
        aporto = Int(InputBox("cuanto dinero va aportar"))
        If aporto < 0 Then
            MsgBox ("no es valido")
        Else
            If aporto = 0 Then
                MsgBox ("el estudiante no aporto")
                noaporto = noaporto + 1
            End If
            If aporto > 0 Then
                abono = aporto + abono
                tot = tot + 1
            End If
            If aporto > 10000 Then
                tot = tot + 1
                masde = masde + 1
            End If
        End If     
    Wend
    promedio = abono / tot
    MsgBox ("el total aportado fue:" & "$" & abono)
    MsgBox ("estudiantes que aportaron :" & tot)
    MsgBox ("estudiantes que aportaron mas de $10.000: " & masde)
    MsgBox ("estudiantes que no aportaron: " & noaporto)
    MsgBox ("promedio de estudiantes que aportaron es de: " & "$" & promedio)
End Sub
~~~

# Diagrama de flujo

![Diagrama de flujo](/Yezid_Perez/Ciclo_while/IMG/Diagram_while.jpg)


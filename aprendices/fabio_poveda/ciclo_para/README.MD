# Ciclo Para

~~~
Sub estudiante()
    cont = 0
    acum = 0
    masde = 0
    cant = Int(InputBox("Ingrese la cantidad de estudiantes que aportaron de los 7500"))
        For i = 1 To cant
            aporto = Int(InputBox("Ingrese la cantidad que aporto el estudiante"))
            cont = cont + 1
            acum = acum + aporto
            noapor = 7500 - cant
            prom = acum / cont
                If aporto > 10000 Then
                    masde = masde + 1
                End If
        Next i
    MsgBox ("Cantidad de estudintes que aporto: " & cant)
    MsgBox ("total recaudado: " & acum)
    MsgBox ("El numero de estudiantes que no aporto: " & noapor)
    MsgBox ("Valor recaudo promedio: " & prom)
    MsgBox ("Los estudiantes que aportaron mas de 10.000 fueron: " & masde)
End Sub
~~~
Sub evento()
    a = 0
    n = 0
    aps = 0
    total = 0
    
    While total <= 3000000
        dinero = Int(InputBox("Cuanto va a aportar"))
        If dinero > 0 Then
            a = a + 1
            total = total + dinero
            If dinero >= 10000 Then
                aps = aps + 1
            End If
        Else
            n = n + 1
        End If
    Wend
    
    prom = total / a
    MsgBox "total recaudado es" & total
    MsgBox "el promedio de los estudiantes" & prom
    MsgBox "cantidad de estudiantes que aportaron" & "(" & a & ")" & " estudiantes "
    MsgBox "numero de estudiantes que no aportaron" & "(" & n & " )" & " estudiantes "
    MsgBox "cantidad de estudiantes que aortaron una cantidad superior a 10000" & "(" & aps & ")" & " estudiantes"
    
            
End Sub


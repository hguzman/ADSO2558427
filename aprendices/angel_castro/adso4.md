
~~~
Sub evento()
    siabon = 0
    noabon = 0
    abono_s10000 = 0
    totalabon = 0
    ab = 0
    
    For i = 1 To 3
        ab = Int(InputBox("ingrese la cantidad a donar"))
        If ab >= 1000 Then
               siabon = siabon + 1
             If ab >= 10000 Then
               abono_s10000 = abono_s10000 + 1
             End If
        Else
             noabon = noabon + 1
        End If
           
    totalabon = totalabon + ab
    
    Next i
    promedio = totalabon / siabon
    MsgBox "Donaron" & "(" & siabon & ")" & " personas"
    MsgBox "No donaron " & "(" & noabon & ") " & " personas"
    MsgBox "Donaron mas de 10000 " & "(" & abono_s10000 & ")" & "personas"
    MsgBox "El total abonado es " & total_abonado
    MsgBox "El promedio de los estudiantes que abonaron fue de " & promedio
End Sub
~~~
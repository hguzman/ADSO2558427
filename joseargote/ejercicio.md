```
Sub proyecto()
  h = InputBox("por favor ingrese la cantidad:")
  If h < 1000 Then
   MsgBox (" no se va a pagar impuestos ")
   
    Else
       If h >= 1001 And h < 10001 Then
       ingresos = 0.05
        MsgBox ("el pago del ingreso anual es:") & h * ingresos
         Else
          If h >= 10001 And h < 100000 Then
           ingresos = 0.01
            MsgBox ("el pago del ingreso anual es:") & h * ingresos
             Else
              If h >= 100001 And h < 1000000 Then
               ingresos = 0.15
                MsgBox ("el pago del ingreso anuales:") & h * ingresos
                 Else
                  If h >= 1000001 And h < 10000000 Then
                   ingresos = 0.02
                    MsgBox ("el pago del ingreso anuales:") & h * ingresos
                     Else
                      If h >= 100000001 Then
                       ingresos = 0.25
                        MsgBox ("el pago del ingreso anuales:") & h * ingresos
                    End If
                End If
            End If
        End If
    End If
End If
```

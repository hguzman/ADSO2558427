## Camilo lafaurie
## ingresos anuales 

~~~
sub inicio()
    ingreso_anual = InputBox("Digite los ingresos anuales de la empresa: ")
    Total = 0
    impuesto = 0
    aumento = 0

    If ingreso_anual < 1000 And ingreso_anual > 0 Then
    MsgBox ("No debe pagar impuestos")
    Else
        If ingreso_anual >= 1001 And ingreso_anual <= 10000 Then
            aumento = (ingreso_anual * 0.05)
            MsgBox ("Total impuesto a pagar: ") & aumento
        Else
            If ingreso_anual >= 10001 And ingreso_anual <= 100000 Then
                aumento = (ingreso_anual * 0.1)
                MsgBox ("Total impuesto a pagar: ") & aumento
            
            Else
                If ingreso_anual >= 100001 And ingreso_anual <= 1000000 Then
                    aumento = (ingreso_anual * 0.15)
                    MsgBox ("Total impuesto a pagar: ") & aumento
                Else
                    If ingreso_anual >= 100000 And ingreso_anual <= 10000000 Then
                        aumento = (ingreso_anual * 0.2)
                        MsgBox ("Total impuesto a pagar: ") & aumento
                    Else
                        If ingreso_anual >= 10000001 Then
                                aumento = (ingreso_anual * 0.25)
                                MsgBox ("Total impuesto a pagar: ") & aumento
                            Else
                                MsgBox "No se puede calcular"
                        End If
                        
                    End If
                
                End If
                
            End If
                    
        End If

    End If
end sub
~~~
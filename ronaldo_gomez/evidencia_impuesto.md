# Programa de calculo de impuesto 


~~~

sub prueba () 

ingresoanual = InputBox("Ingresa su ingreso anual: ")

If ingresoanual < 1000 Then
 MsgBox ("no hay impuesto")
Else
    If ingresoanual >= 1001 And ing < 10000 Then
        total = ingresoanual * 0.05
        MsgBox ("El total a pagar es: ") & total
    Else
        If ingresoanual >= 10001 And ing < 100000 Then
        total = ingresoanual * 0.10
        MsgBox ("El total a pagar es: ") & total
	
        Else
             If ingresoanual >= 100001 And ing < 1000000 Then
             total = ingresoanual * 0.15
             MsgBox ("El total a pagar es: ") & total
	      
            Else
                If ingresoanual >= 1000001 And ing < 10000000 Then
                total = ingresoanual * 0.20
                MsgBox ("El total a pagar es: ") & total
		
		Else
                    If ingresoanual > 10000001 Then
                    total = ingresoanual * 0.25
                    MsgBox ("El total a pagar es: ") & total
		    End If
                End If
            End If
        End If
    End If
End If
End Sub
~~~

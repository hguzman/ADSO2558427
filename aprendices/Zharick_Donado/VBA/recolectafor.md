### Ejercicio recaudo con For(ciclo)
    
~~~
Sub eventoescolar()
    abono = 0
    no_abono = 0
    diezmil = 0
    recaudado = 0

    For a = 1 To 2
	situacion = InputBox("Desea abonar para el evento? (si o no)")
	If situacion = "si" Then
	    abono = abono + 1
	    Total = Int(InputBox("Cuanto va a abonar?"))
	    recaudado = recaudado + Total
	    If Total >= 10000 Then
		diezmil = diezmil + 1
	    End If
	Else
	    no_abono = no_abono + 1
	End If
    Next a

    promedio = total_recaudado / abono
    MsgBox "El total recaudado es de $" & recaudado
    MsgBox "El promedio del recaudo es de $" & promedio
    MsgBox "La cantidad de estudiantes que donaron " & "(" & abono & ")" & " Estudiantes"
    MsgBox "La cantidad de estudiantes que no donaron " & "(" & no_abono & ")" & " Estudiantes"
    MsgBox "Los estudiantes que aportaron una cantidad superior a $10.000:   " & "(" & diezmil & ")" & " Estudiantes"
~~~
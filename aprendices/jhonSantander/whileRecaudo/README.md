<h2 align=center>Ejercicio de recolecta con While</h2>

<h3 align=center>programación</h3>

```
Sub recolecta()
    estudianteAbono = 0
    estudianteNoAbono = 0
    estudianteSolidario = 0
    totalRecaudado = 0
    While totalRecaudado <= 3000000
        preguntaAporta = Int(InputBox("Aporte dinero"))
        Select Case preguntaAporta
            Case Is < 0
                MsgBox ("Error")
            Case Is = 0
                estudianteNoAbono = estudianteNoAbono + 1
            Case 1 To 10000
                estudianteAbono = estudianteAbono + 1
                totalRecaudado = totalRecaudado + preguntaAporta
            Case Else
                estudianteAbono = estudianteAbono + 1
                estudianteSolidario = estudianteSolidario + 1
                totalRecaudado = totalRecaudado + preguntaAporta
        End Select
    Wend
    promedio = totalRecaudado / estudianteAbono
    MsgBox ("Aportaron " & estudianteAbono)
    MsgBox ("No aportaron " & estudianteNoAbono)
    MsgBox ("Lo recolectado fue $" & totalRecaudado)
    MsgBox ("Promedio es $" & promedio)
    MsgBox (estudianteSolidario & " dieron mas de $10.000")
End Sub
``` 

<h3 align=center>Diagrama de flujo</h3>

![DiagramaFlujo](https://i.imgur.com/XdDT47h.jpg)

[Descargar](https://drive.google.com/file/d/18zfT8OZzXfuV3hHSjYazYVytbNFxBPgG/view?usp=sharing)
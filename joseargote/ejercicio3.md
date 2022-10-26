Sub inicio()
     For x = 1 To 15
   c = InputBox(" ingrese un nombre: ")
        fila = dato.Cells(1, 6)
         dato.Cells(fila, 2) = c
         dato.Cells(1, 6) = fila + 1
          Next x
           MsgBox ("Muchas gracias")
end sub 
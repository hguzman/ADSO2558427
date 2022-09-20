<h2 align=center>Ejercicio de Formulario con VBA</h2>

<h3 align=center>Formulario Bienvenida</h3>

<p align=center><img src="https://i.imgur.com/KELXInL.png"></p>

**Boton ingresar**

```
Private Sub btnIngresar_Click()
    frmIndex.Show
    fmrBienvenida.Hide
End Sub
```

<h3 align=center>Formulario Index</h3>

<p align=center><img src="https://i.imgur.com/OCYTNhq.png"></p>

**Botón btnnuevo**

```
Private Sub btnNuevo_Click()
    txtSerie.Enabled = True
    txtNombre.Enabled = True
    txtMarca.Enabled = True
    btnGuardar.Enabled = True
    btnNuevo.Enabled = False
    btnBuscar.Enabled = False
    txtSerie.SetFocus
    datos.Cells(1, 5) = datos.Cells(1, 5) + 1
End Sub
```

**Botón buscar**

```
Private Sub btnBuscar_Click()
    n = 1
    lista = Int(InputBox("Rango de la lista"))
    busc = Int(InputBox("ingrese cedula"))
    sw = True
    While busc <> serie And sw
        serie = datos.Cells(n, 1)
        n = n + 1
        If n = lista Then
            sw = False
            If busc <> serie Then
                MsgBox ("error en encontar el nombre")
            End If
        End If
    Wend
    n = n - 1
    nom = datos.Cells(n, 2)
    marca = datos.Cells(n, 3)
    If busc = serie Then
        MsgBox ("el nombre del proietario es " & nom & " y la marca del celular es " & marca)
    End If
End Sub
```

**Botón guardar**

```
Private Sub btnGuardar_Click()
    fila = datos.Cells(1, 5)
    datos.Cells(fila, 1) = txtSerie.Text
    datos.Cells(fila, 2) = txtNombre.Text
    datos.Cells(fila, 3) = txtMarca.Text
    txtSerie.Text = Empty
    txtNombre.Text = Empty
    txtMarca.Text = Empty
    txtSerie.Enabled = False
    txtNombre.Enabled = False
    txtMarca.Enabled = False
    btnGuardar.Enabled = False
    btnNuevo.Enabled = True
    btnBuscar.Enabled = True
End Sub
```

[Descargar Formulario](https://drive.google.com/drive/folders/19S654tH41ZxvlWya_kJjWyzA2z9N4VZA?usp=sharing)
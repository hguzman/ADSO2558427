<h2 align=center>Ejercicio de Formulario con VBA</h2>

<h3 align=center>Formulario Bienvenida</h3>

<p align=center><img src="https://i.imgur.com/DUWdz5H.png"></p>

**Boton ingresar**

```
Private Sub btnIngresar_Click()
    frmIndex.Show
    Unload frmBienvenida
End Sub
```

<h3 align=center>Formulario Index</h3>

<p align=center><img src="https://i.imgur.com/pvzpnqJ.png"></p>

**Botón btnnuevo**

```
Private Sub btnNuevo_Click()
    txtSerie.Enabled = True
    txtNombre.Enabled = True
    txtMarca.Enabled = True
    btnGuardar.Enabled = True
    btnNuevo.Enabled = False
    btnBuscar.Enabled = False
    btnEditar.Enabled = False
    btnEliminar.Enabled = False
    txtSerie.SetFocus
    datos.Cells(1, 5) = datos.Cells(1, 5) + 1
    datos.Cells(2, 5) = datos.Cells(1, 5)
End Sub
```

**Botón buscar**

```
Private Sub btnBuscar_Click()
    n = 1
    p = 0
    lista = datos.Cells(1, 5) + 1
    busc = Int(InputBox("ingrese cedula"))
    sw = True
    While busc <> serie And sw
        serie = datos.Cells(n, 1)
        n = n + 1
        p = p + 1
        If n = lista Then
            sw = False
            If busc <> serie Then
                MsgBox ("error en encontar el nombre")
            End If
        End If
    Wend
    n = n - 1
    datos.Cells(2, 5) = p
    nom = datos.Cells(n, 2)
    marca = datos.Cells(n, 3)
    If busc = serie Then
        txtSerie = datos.Cells(n, 1)
        txtNombre = datos.Cells(n, 2)
        txtMarca = datos.Cells(n, 3)
    End If
End Sub
```

**Botón guardar**

```
Private Sub btnGuardar_Click()
    fila = datos.Cells(2, 5)
    datos.Cells(fila, 1) = txtSerie.Text
    datos.Cells(fila, 2) = txtNombre.Text
    datos.Cells(fila, 3) = txtMarca.Text
    MsgBox ("Guardado exitosamente")
    txtSerie.Enabled = False
    txtNombre.Enabled = False
    txtMarca.Enabled = False
    btnGuardar.Enabled = False
    btnNuevo.Enabled = True
    btnBuscar.Enabled = True
    btnEditar.Enabled = True
    btnEliminar.Enabled = True
    btnEditar.Enabled = True
End Sub
```

**Botón editar**

```
Private Sub btnEditar_Click()
    txtSerie.Enabled = False
    txtNombre.Enabled = True
    txtMarca.Enabled = True
    puntero = datos.Cells(2, 5)
    btnEditar.Enabled = False
End Sub
```

**Botón eliminar**

```
Private Sub btnEliminar_Click()
    respuesta = MsgBox("¿Desea borrar?", vbQuestion + vbYesNo + vbDefaultButton2, "Mensaje")
    If respuesta = vbYes Then
        n = 2
        puntero = datos.Cells(2, 5)
        datos.Rows(puntero).EntireRow.Delete
        datos.Cells(1, 5) = datos.Cells(1, 5) - 1
        datos.Cells(2, 5) = datos.Cells(1, 5)
    End If
End Sub
```

[Descargar Formulario](https://drive.google.com/drive/folders/19S654tH41ZxvlWya_kJjWyzA2z9N4VZA?usp=sharing)
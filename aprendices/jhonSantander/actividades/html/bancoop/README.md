<h1 align=center>Pagina de inicio de Bancoop</h1>

<h2 align=center>Maquetado</h2>

<p align=center><img src="https://i.imgur.com/DKQuDWI.png"></p>

<h3>HTML</h3>

```
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Bancoop - Inicio</title>
</head>
<body>
    <main>
        <header></header>
        <nav></nav>
        <section>
            <article class="usuario"></article>
            <article class="usuario"></article>
        </section>
        <aside>
            <article class="cuadro"></article>
            <article class="cuadro"></article>
            <article class="cuadro"></article>
            <article class="cuadro"></article>
        </aside>
        <footer></footer>
    </main>
</body>
</html>
```

<h3>CSS</h3>

```
main{
    border: 1px solid blue;
    width: 1000px;
    height: 700px;
    margin: auto;
}

header{
    border: 1px solid green;
    height: 100px;
}

nav{
    border: 1px solid blue;
    height: 50px;
}

section{
    border: 1px solid red;
    height: 450px;
    width: 400px;
    display: inline-block;

}

.usuario{
    border: 1px solid green;
    width: 350px;   
    height: 200px;   
    margin: auto;
    margin-top: 15px;
}

aside{
    border: 1px solid red;
    height: 450px;
    width: 590px;
    display: inline-block;  
}

.cuadro{
    border: 1px solid purple;
    height: 220px;
    width: 290px;
    float:right;  
    margin: auto;
}

.cuadro2{
    border: 1px solid purple;
    height: 50px;
    width: 50px;
    float:right;
}

footer{
    border: 1px solid green;
    height: 90px;
}
```

<h2 align=center>Contenido</h2>

<p align=center><img src="https://i.imgur.com/ieTOJuh.png"></p>

<h3>HTML</h3>

```
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Bancoop - Inicio</title>
</head>
<body>
    <main>
        <header><img src="src/banner.png" alt="banner de banco" id="encabezado"></header>
        <nav>
            <ul>
                <li class="menu"><strong>. Créditos .</strong></li>
                <li class="menu"><strong>. leasing .</strong></li>
                <li class="menu"><strong>. Ahorros .</strong></li>
                <li class="menu" id="menu-sin-borde"><strong>. Servicio al cliente .</strong></li>
            </ul>
        </nav>
        <aside>
            <article class="usuario">
                <h3 class="tituloIngreso">INGRESA A TU CUENTA</h3>
                <label for="usuario">
                    <span>Cuenta:</span>
                    <input id="cuenta" type="text" placeholder="Numero de cuenta">
                </label>
                <br/>
                <label for="tipo">
                    <span>Tipo:</span>
                    <input id="tipo" type="text">
                </label>
                <br/>
                <label for="clave">
                    <span>Clave:</span>
                    <input id="clave" type="text" placeholder="Ingrese Nombre">
                </label>
                <br/>
                <button>Ingresar</button>
            </article>
            <article class="usuario" id="transacciones">
                <p class="subtituloAmarillo"><i>TRANSACCIONES</i></p>
                <p class="pagos">Banca personal</p>
                <p class="pagos">Banca empresarial</p>
                <p class="pagos">Banca seguros</p>
                <p class="pagos">Pago de facturas</p>
                <p class="subtituloAmarillo"> <i>TARJETAS DE CRÉDITO</i></p>
                <p class="pagos">Credi Visa</p>
                <p class="pagos" id="pagos-sin-borde">Credi Mastercard</p>
            </article>
        </aside>
        <section>
            <article class="cuadro" id="cuadro1">
                <p class="tituloCuadro" id="titulo-cuadro1">AHORRO ESTUDIANTIL</p>
                <img src="src/img2.png" alt="libros" class="imagen">
                <p class="texto">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde delectus temporibus alias. Odit dolorem, ratione reprehenderit voluptates ipsa</p>
            </article>
            <article class="cuadro" id="cuadro2">
                <p class="tituloCuadro" id="titulo-cuadro2">SOLICITA NUESTROS PRODUCTOS</p>
                <img src="src/img1.png" alt="targeta de credito" class="imagen">
                <p class="texto">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde delectus temporibus alias. Odit dolorem, ratione reprehenderit voluptates ipsa</p>
            </article>
            <article class="cuadro" id="cuadro3">
                <p class="tituloCuadro" id="titulo-cuadro3">CRÉDITO HIPOTECARIO</p>
                <img src="src/img4.png" alt="casa alcancia" class="imagen">
                <p class="texto">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde delectus temporibus alias. Odit dolorem, ratione reprehenderit voluptates ipsa</p>
            </article>
            <article class="cuadro" id="cuadro4">
                <p class="tituloCuadro" id="titulo-cuadro4">CRÉDITO VEHÍCULOS</p>
                <img src="src/img3.png" alt="llaves de vehiculo" class="imagen">
                <p class="texto">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde delectus temporibus alias. Odit dolorem, ratione reprehenderit voluptates ipsa</p>
            </article>
        </section>
        <footer>
            <p class="pieDePagina" id="pieDePaginaCentrar">Contáctenos</p>
            <p class="pieDePagina">Línea gratuita 018000-00001</p>
            <p class="pieDePagina">Banco entídad financiera - Todos los derechos reservados.</p>
        </footer>
    </main>
</body>
</html>
```

<h3>CSS</h3>

```
* {
    font-family: Arial, Helvetica, sans-serif;
}

main{
    width: 1000px;
    height: 965px;
    margin: auto;
}

header{
    background-color: black;
    padding-bottom: 15px;
}

#encabezado{
    width: 998px;
}

nav{
    border-top: 1px solid #f6bd18;
    background-color: #f6bd18;
    border-radius: 0px 0px 20px 20px;
    height: 55px;
}

.menu{
    border-right: 2px solid white;
    color: #000000;
    font-size: 22px;
    font-weight: 50px;
    display: inline;
    padding-right: 40px;
    margin-top: 15px;
    padding-bottom: 2px;
    margin-left: 50px;
    margin-right: 10px;
}

#menu-sin-borde{
    border-right: 0px;
}

aside{  
    height: 590px;
    width: 400px;
    display: inline-block;
}

.usuario{
    background-color: #b2b2b2;
    border-radius: 20px 20px 0px 0px;
    width: 380px;   
    height: 250px;   
    margin: auto;
    margin-top: 15px;
    float: left;
    margin-left: 0px;
}

#cuenta{
    margin-left: 10px;
}

#tipo{
    margin-left: 30px;
}

#clave{
    margin-left: 20px;
}

aside article label{
    color: #000000;
    padding-top: 15px;
    padding-bottom: 15px;
    padding-left: 40px ;
    display: inline-block;
}

aside article button{
    display: block;
    margin-left: 160px;
    margin-right: 160x;
    margin-top: 20px;
    background-color: #f6bd18;
}

.tituloIngreso{
    border-radius: 20px 20px 0px 0px;
    background-color: #000000;
    padding-top: 12px;
    padding-bottom: 5px;
    color: #c5c5c5; 
    margin: 0px;
    text-align: center;
}

#transacciones{
    background-color: #232323;
    border-radius: 0px 0px 0px 0px;
    height: 284px;
}

.subtituloAmarillo{
    background-color: #000000;
    color: #f7ba19;
    text-align: center;
    margin: 0px;
    padding-bottom: 5px;
    padding-top: 5px;
}

.pagos{
    border-bottom: 1px solid #ffffff;
    color: #c5c5c5;
    text-align: center;
}

#pagos-sin-borde{
    border-bottom: 0px;
}

section{
    height: 590px;
    width: 590px;
    display: inline-block;  
}

.cuadro{    
    background-color: #e6e4e5;
    height: 270px;
    width: 280px;
    float:right;
    margin-top: 15px;
    margin-left: 12px;  
}

.tituloCuadro{
    background-color: #000000;
    color: #c5c5c5;
    margin: 0px;
    padding-top: 15px;
    text-align: center;
    padding-bottom: 15px;
    font-size: 14px;
}

#cuadro1{
    border-radius: 0px 20px 0px 0px;
}

#titulo-cuadro1{
    border-radius: 0px 20px 0px 0px;
}

#cuadro2{
    border-radius: 20px 0px 0px 0px;
}

#titulo-cuadro2{
    border-radius: 20px 0px 0px 0px;
}

#cuadro3{
    border-radius: 0px 0px 20px 0px;
}



#cuadro4{
    border-radius: 0px 0px 0px 20px;
}

.texto{
    font-size: 10px;
    width: 270px;
    margin-left: 10px;
    margin-right: 10px;
    margin-top: 16px;
}

footer{
    background-color: #232323;
    border-radius: 0px 0px 20px 20px;
    height: 90px;
}

.pieDePagina{
    color: #c5c5c5;
    margin: 0px;
    margin-top: 5px;
    text-align: center;
}

#pieDePaginaCentrar{
    padding-top: 15px;
}
```
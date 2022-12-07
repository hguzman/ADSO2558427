## HTML5
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
        <header><img src="img/logo.png" alt="banner de banco" id="encabezado"></header>
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
                <img src="img/imag2.png" alt="libros" class="credito">
                <p class="texto">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde delectus temporibus alias. Odit dolorem, ratione reprehenderit voluptates ipsa</p>
            </article>
            <article class="cuadro" id="cuadro2">
                <p class="tituloCuadro" id="titulo-cuadro2">SOLICITA NUESTROS PRODUCTOS</p>
                <img src="img/card.png" alt="targeta de credito" class="credito">
                <p class="texto">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde delectus temporibus alias. Odit dolorem, ratione reprehenderit voluptates ipsa</p>
            </article>
            <article class="cuadro" id="cuadro3">
                <p class="tituloCuadro" id="titulo-cuadro3">CRÉDITO HIPOTECARIO</p>
                <img src="img/hipotecario.jpeg" alt="casa alcancia" class="credito">
                <p class="texto">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde delectus temporibus alias. Odit dolorem, ratione reprehenderit voluptates ipsa</p>
            </article>
            <article class="cuadro" id="cuadro4">
                <p class="tituloCuadro" id="titulo-cuadro4">CRÉDITO VEHÍCULOS</p>
                <img src="img/img3.jpg" alt="llaves de vehiculo" class="credito">
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
## CSS
```
* {
    font-family: Arial, Helvetica, sans-serif;
}

main{
    height: 965px;
    margin: auto;
    width: 1000px;
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
    border-right: 2px solid rgb(248, 248, 248);
    color: #000000;
    display: inline;
    font-size: 22px;
    font-weight: 50px;
    padding-right: 40px;
    margin-top: 15px;
    padding-bottom: 2px;
    margin-left: 50px;
    margin-right: 10px;
}

aside{  
    display: inline-block;
    height: 590px;
    width: 400px;   
}

.usuario{
    background-color: #b2b2b2;
    border-radius: 20px 20px 0px 0px;
    height: 250px;   
    margin: auto;
    margin-top: 15px;
    float: left;
    margin-left: 0px;
    width: 380px; 
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
    background-color: #e6e337;
    border-radius: 6px;
    border: 2px solid rgb(165, 148, 0);
    margin-left: 160px;
    margin-right: 160x;
    margin-top: 20px;
}

.tituloIngreso{
    border-radius: 20px 20px 0px 0px;
    background-color: #000000;
    color: #c5c5c5; 
    padding-top: 12px;
    padding-bottom: 5px;
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
    margin: 0px;
    padding-bottom: 5px;
    padding-top: 5px;
    text-align: center;
}

.pagos{
    border-bottom: 1px solid #ffffff;
    color: #c5c5c5;
    text-align: center;
}
section{
    display: inline-block; 
    height: 590px; 
    width: 590px;
}

.credito{
    display: inline-block;
    height: 130px;
    margin: auto;
    margin-left: 55px;
    width: 6rem;
}

.cuadro{    
    background-color: #e6e4e5;
    height: 270px;
    float:right;
    margin-top: 15px;
    margin-left: 12px;
    width: 280px;  
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
    margin-left: 10px;
    margin-right: 10px;
    margin-top: 16px;
    font-size: 10px;
    width: 270px;
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
<h1 align=center>Pagina de inicio de Veterinaria</h1>

<h2 align=center>Maquetado</h2>

<p align=center><img src="https://i.imgur.com/07BCeyv.png"></p>

<h3>HTML</h3>

```
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Centro de mascotas PETME</title>
</head>
<body>
    <main>
        <header></header>
        <nav></nav>
        <section>
            <article></article>
            <article></article>
        </section>
        <aside></aside>
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
    width: 600px;
    display: inline-block;

}

article{
    border: 1px solid green;
    width: 580px;   
    height: 200px;   
    margin: auto;
    margin-top: 15px;
}

aside{
    border: 1px solid red;
    height: 450px;
    width: 390px;
    display: inline-block;
}

footer{
    border: 1px solid green;
    height: 90px;
}
```

<h2 align=center>Contenido</h2>

<p align=center><img src="https://i.imgur.com/sB3cyIp.png"></p>

<h3>HTML</h3>

```
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Centro de mascotas PETME</title>
</head>
<body>
    <main>
        <header><img src="src/header.png" alt="centro vetenirario caninos y felinos" id="encabezado"></header>
        <nav>
            <ul>
                <li class="menu">.Servicios.</li>
                <li class="menu">.Productos.</li>
                <li class="menu">.Guardería.</li>
                <li class="menu" id="menuNoLinea">.Promociones.</li>
            </ul>
        </nav>
        <section>
            <article class="info1">
                <h3 class="subtitulo">Cuidados y educación para su perro</h3>
                <p class="informacion">Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis ex labore ad eius tempore. Dolores molestias reprehenderit a nulla,</p>
                <img src="src/dog1.png" alt="perro doggo" class="perros">
                <a href="https://google.com" class="informacion">Ver mas...</a>
            </article>
            <article class="info2">
                <h3 class="subtitulo">Salir de viaje con su mascota</h3>
                <p class="informacion">Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis ex labore ad eius tempore. Dolores molestias reprehenderit a nulla,</p>
                <img src="src/dog2.png" alt="perro doggo" class="perros">
                <a href="https://google.com" class="informacion">Ver mas...</a>
            </article>
        </section>
        <aside class="registro">
            <h3 class="formulario">Solicitar cita médica</h3>
            <form action="">
                <label for="nombre-mascota">
                    <span>Mascota:</span>
                    <input align="right" id="nombre-mascota" type="text" placeholder="Ingrese Nombre">
                </label>
                <br/>   
                <label for="edad">
                    <span>Edad:</span>
                    <input type="number" id="edad" name="edad" min="0" max="300">
                </label>
                <br/>
                <label for="raza">
                    <span>Raza:</span>
                    <input id="raza" type="text" placeholder="Ingrese Raza">
                </label>
                <br/>
                <label for="fecha">
                    <span>Fecha:</span>
                    <input id="fecha" type="date">
                </label>
                <br/>
                <label for="hora">
                    <span>Hora:</span>
                    <input id="hora" type="time">
                </label>
                <br/>
                <label for="amo">
                    <span>Amo:</span>
                    <input id="amo" placeholder="" type="text">
                </label>
                <button>VALIDAR CITA</button>
            </form>
        </aside>
        <footer>
            <p class="contacto" id="contactoarriba">Contáctanos</p>
            <p class="contacto">Línea gratuita 018000-00001</p>
            <p class="contacto">Correo: preguntas preguntas@caninosyfelinos.com</p>
        </footer>
    </main>
</body>
</html>
```

<h3>CSS</h3>

```
main{
    height: 840px;
    margin: auto;
    width: 1000px;
}

header{
    height: 207px;
}

nav{
    background-color: #1C4A48;
    border-radius: 0px 0px 20px 20px;
    border-top: 1px solid #1C4A48;
    height: 70px;
}

.menu{
    border-right: 2px solid white;
    color: #ffffff;
    display: inline;
    font-size: 28px;
    margin-left: 50px;
    margin-right: 10px;
    padding-bottom: 2px;
    padding-right: 40px;
    padding-top: 2px;
}

#menuNoLinea{
    border: 0px;
}

ul{
    border: 0px;
    padding-bottom: 5px;
    padding-top: 5px;
}

section{
    height: 450px;
    float: left;
    width: 600px;
}


.info1{
    background-color: #fbf5b9;
    border-radius: 20px 20px 0px 0px;
}

.informacion{
    display: inline-block;
    margin-left: 25px;
    margin-top: 0px;
    width: 250px;
}

.info2{
    background-color: #fbf5b9;
    border-radius: 0px 0px 20px 20px;
}

.subtitulo{
    margin-left: 25px;
    padding-top: 15px;
}

.tituloCuadro{
    display: inline;
}
.perros{
    border: 1px solid black;
    border-radius: 20px 20px 20px 20px;
    float: right;
    height: 120px;
    margin-right: 25px;
    margin-bottom: 30px;
}

article{  
    height: 200px;   
    margin: auto;
    margin-top: 15px;
    width: 580px; 
}

aside{
    background-color: #4a6e6e;
    border-radius: 20px 20px 20px 20px;
    float: left;
    height: 420px;
    margin-left: 20px;
    margin-right: 10px;
    margin-top: 13px;
    margin-bottom: 12px;
    width: 360px;
} 

aside form label{
    color: #d9e0e1;
    display: inline-block;
    padding-bottom: 15px;
    padding-left: 40px ;
    padding-top: 15px;
}

#nombre-mascota{
    margin-left: 10px;
}

#edad{
    margin-left: 30px;
}

#raza{
    margin-left: 30px;
}

#fecha{
    margin-left: 26px;
    width: 140px;
}

#hora{
    margin-left: 30px;
    width: 140px
}

#amo{
    margin-left: 30px;
}

aside form button{
    display: block;
    margin-left: 125px;
    margin-right: 125px;
    margin-top: 20px;
}

footer{
    background-color:#1c4a48;
    border-top: 1px solid blue;
    border-radius: 0px 0px 20px 20px;
    clear: both;
    color: #9aafb0;
    font-size: 15px;
    height: 100px;
    text-align: center;
}

.contacto{
    margin: 5px;    
}

#contactoarriba{
    margin-top: 20px;
}

#encabezado{
    width: 1000px;
}

.formulario{
    background-color: #0a2826;
    border-radius: 20px 20px 0px 0px;
    color: #c7cfd1;
    margin: 0px;
    padding: 13px;
    text-align: center;
}
```
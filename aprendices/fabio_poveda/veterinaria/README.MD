# Pagina Veterinaría

## HTML

~~~
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <link rel="stylesheet" href="estilos.css">
    <meta charset="UTF-8">
    <title>Veterinaria</title>
</head>
<body>
    <main>
        <header><img src="foto1.PNG" alt=""></header>
        <nav><ul>
            <li>Servicios</li>
            <li>Productos</li>
            <li>Guardería</li>
            <li>Promociones</li>
        </ul></nav>
        <section>
            <article><h3>Cuidado y educación para su perro</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis, id ducimus earum ratione, rerum illosimilique sapiente a ex possimus</p><img src="perro1.jpg"alt="foto de perro" id="perro1"><a href="https://www.google.com/?hl=es" class="links">Ver más...</a></article>
            <article><h3>Salir de viaje con su mascota</h3><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi, modi. Nam eius odio perferendis, similique nisi quas incidunt!</p><img src="perro2.jpg" alt="Imagen de perro" id="perro2"> <a href=https://www.google.com/?hl=es" class="links">Ver más...</a></article>  
        </section>
        <center><aside><h3 id="cita">Solicitar cita medica</h3></aside></center>
        <center><footer><p id="cont">Contáctenos<br>linea Gratuita: 018000-00001 <br>Correo: preguntas@caninosyfelinos.com </p></footer>
        </center>
    </main>
</body>
</html>
~~~

___

## CSS

~~~
header{
    border: 1px solid red;
    height: 171px;
    border-radius: 10px 10px 0px 0px;
}

nav{
    border: 1px solid blue;
    height: 60px;
    background-color: #1C4A48;
    border-radius: 0px 0px 6px 6px;
}

main{
    border: 1px solid black;
    width: 823px;
    height: 650px;
    margin: auto;
    border-radius: 10px 10px 0px 0px;
}

section{
    border: 1px solid green;
    width: 475px;
    display: inline-block;
    float: left;
}

article{
    border: 1px solid brown;
    height: 160px;
    margin-top: 15px;
    background-color: #f8ed72ef;
    border-radius: 10px 10px 0px 0px;
}

aside{
    border: 1px solid springgreen;
    height: 338px;
    width: 299px;
    display: inline-block;
    margin-left: 45px;
    border-radius: 10px 10px 10px 10px;
    background-color: #4a6e6e;
    margin-top: 17px;
}

ul li{
    display: inline-block;
    font-size: 22px;
    color: white;
    margin-left: 60px;
    padding: 5px;
    height: 20px;
}

footer{
    border: 1px solid teal;
    height: 43px;
}


p{
    display: inline-block;
    margin-left: 35px;
    margin-top: -15px;
    width: 280px;
    height: 70px;
}

h3{
    margin-top: 25px;
    display: inline-block;
    margin-left: 34px;
}

#perro1{
    width: 90px;
    border: 2px solid;
    border-radius: 10px 10px 10px 10px;
    float: right;
    margin-top: -116px;
    margin-right: 20px;
}
#perro2{
    width: 90px;
    border: 2px solid;
    border-radius: 10px 10px 10px 10px;
    float: right;
    margin-top: -35px;
    margin-right: 20px;
    height: 117px;
}

aside h3 {
    background-color: #1C4A48;
    margin-top: auto;
    width: 300px;
    border-radius: 10px 10px 0px 0px;
    height: 40px;
    color: white;
    margin-left: 0px;
}
footer{
    background-color: #1C4A48;
    border-radius: 0px 0px 10px 10px;
    height: 56px;
}
#cont{
   float: right;
   margin-right: 270px;
   margin-top: 1px;
   color: white;
}
.links{
    margin-left: 35px;
}
~~~

![](/aprendices/fabio_poveda/veterinaria/veterinari.png)
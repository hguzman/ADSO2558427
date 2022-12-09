## index

~~~
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="estilos.css">
    <title>Caninos</title>
</head>
<body>
    <main>
        <header><img src="img.png" alt="imagen"></header>
        <nav>
            <ul>
                <li>.Servicios.</li>
                <li>.Productos.</li>
                <li>.Guardías.</li>
                <li>.Promociones.</li>
            </ul>
        </nav>
        <section>
            <article class= "arriba">
                <h3>Cuidados y educacion para su perro</h3>
                <br>
                <p><img class="derecha" src="perro1.png" alt="perro1">Cuando decide tener un perro no sabe, no vienen con un manual de instrucciones. El perro NO es un juguete ni se debe regalar a alguien que no esté preparado.</p>
                <br>
                <a href="https://www.clinicaveterinarialaasuncion.com/blog/educacion-y-cuidados-basicos-en-perros-y-gatos/">ver mas...</a>
            </article>
            <article class= "abajo">
                <h3>Salir de viaje con su mascota</h3>
                <br>
                <p><img clase="derecha" src="perro2.png" alt="perro2">Sin importar si son perros o gatos, la raza, el tamaño o el lugar de la aeronave en el que viajan, estas mascotas, corren peligro de sufrir cualquier episodio.</p>
                <br>
                <a href="https://www.elcolombiano.com/cultura/mascotas/consejos-de-medicos-veterinarios-para-viajar-en-avion-con-perros-o-gatos-NE16470490">  ver mas...</a>
            </article>
        </section>
        <aside>
            <header>
                <h4>Solicitar cita medica</h4>
            </header>
            <form>
                <ul>
                    <li><label>Mascota: </label>
                        <input type="text" placeholder="ingrese nombre"><br><br></li>
                    <li><label>Edad: </label>
                        <input type="text" placeholder=""><br><br></li>
                    <li><label>Raza: </label>
                        <input type="text" placeholder="ingrese raza"><br><br></li>
                    <li><label>Fecha: <input type="dd/mm/aaaa"></label><br><br></li>
                    <li><label>Hora: <input type="--:-- ----"></label><br><br></li>
                    <li><label>Amo: <input type="ingrese nombre"></label><br><br></li>
                </ul>
                <button class="bnt success">validar cita</button>
            </form>
        </aside>
        <footer>
            <p>
               Contactenos 
               <br>
               Linea gratuita 018000-00001
               <br>
               Correo: preguntas@caninosyfelinos.com
            </p>
        </footer>
    </main>
</body>
</html>
~~~

## estilos

~~~
*{
    margin: 0;
    padding: 0;
}
main{
    height: 680px;
    margin: auto;
    width: 700px;
}
header{
    height: 150px;
}
header img{
    height: 150px;
    width: 698px;
}
nav{
    background-color: #1c4a48;
    height: 45px;
    border-radius: 0px 0px 15px 15px;
    padding-top: 25px;
}
ul li {
    display: inline;
    color: white;
    font-size: 19px;
    border-right: 2px solid white;
    padding: 8px 30px;
    text-align: center;
}
section{
    height: 370px;
    float: left;
    width: 375px;
    margin: 10px 0px 10px 0px;
}
.arriba{
    height: 180px;
    background-color: #fbf5b9;
    border-radius: 15px;
    border-radius: 15px 15px 0px 0px;
}
section img{
    border: 2px solid black;
    height: 120px;
    width: 120px;
    border-radius: 10px;
    float: right;
    margin-right: 10px;
}
.abajo{
    height: 180px;
    background-color: #fbf3b9;
    border-radius: 0px 0px 15px 15px;
    margin-top: 7px;
}
aside{
    height: 370px;
    display: inline-block;
    width: 310px;
    border-radius: 15px;
    background-color: #4a6e6e;
    margin: 10px 0px 8px 11px;
}
aside header{
    height: 15px;
    background-color:#0a2826;
    border-radius: 15px 15px 0px 0px;
    color: white;
    text-align: center;  
    padding: 10px 10px;
    font-size: 17px;
}
aside ul li{
    font-size: 18px;
    display: block;
    text-align: left;
    padding: 4px 25px;
}
aside input{
    height: 15px;
    width: 180px;
}
.bnt{
    border: 1px solid black;
    border-radius: 3px;
    display: block;
    margin-right: auto;
    margin-left: auto;
    height: 25px;
    width: 110px;
}
footer{
    height: 70px;
    background-color: #0a2826;
    color: #94a4a6;
    text-align: center;
    border-radius: 0px 0px 15px 15px;
}
~~~
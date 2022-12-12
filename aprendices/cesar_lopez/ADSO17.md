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
                <h3>Cuidados y educacion para su dog</h3>
                <p><img class="derecha" src="perro1.png" alt="perro1">Uno decide tener un perro no sabe que al igual que los niños, no vienen con un manual de instrucciones.</p>
                <a href="https://www.clinicaveterinarialaasuncion.com/blog/educacion-y-cuidados-basicos-en-perros-y-gatos/">ver mas...</a>
            </article>
            <article class= "abajo">
                <h3>Salir de viaje con su mascota</h3>
                <p><img clase="derecha" src="perro2.png" alt="perro2">Sin importar si son perros o gatos, la raza, el tamaño o el lugar de la aeronave en el que viajan...</p>
                <a href="https://https://www.animalcenter.com.co/veterinaria/">
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
                    <li><label>Fecha:   <input type="dd/mm/aaaa"></label><br><br></li>
                    <li><label>Hora:    <input type="--:-- ----"></label><br><br></li>
                    <li><label>Amo:     <input type="ingrese nombre"></label><br><br></li>
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

    margin: 0;
    padding: 0;
}
main{
    border: 1px solid red;
    height: 680px;
    margin: auto;
    width: 700px;
}
header{
    border: 1px solid brown;
    height: 150px;
}
header img{
    height: 150px;
    width: 698px;
}
nav{
    background-color: #1c4a48;
    border: 1px solid black;
    height: 60px;
    border-radius: 0px 0px 15px 15px;
    padding-top: 5px;
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
    border: 1px solid red;
    height: 370px;
    float: left;
    width: 375px;
    margin: 10px 0px 10px 0px;
}
.arriba{
    border: 1px solid blue;
    height: 180px;
    background-color: #fbf5b9;
    border-radius: 15px;
    border-radius: 15px 15px 0px 0px;
}
.arriba img{
    border: 2px solid black;
    height: 100px;
    width: 120px;
    border-radius: 10px;
    float: right;
    margin-right: 10px;
}
.abajo{
    border: 1px solid black;
    height: 180px;
    background-color: #fbf3b9;
    border-radius: 0px 0px 15px 15px;
    margin-top: 7px;
}
.abajo img{
    border: 2px solid black;
    height: 100px;
    width: 120px;
    border-radius: 10px;
    float: right;
    margin-right: 10px;
}
aside{
    border: 1px solid red;  
    height: 370px;
    display: inline-block;
    width: 310px;
    border-radius: 15px;
    background-color: #4a6e6e;
    margin: 10px 0px 8px 11px;
}
aside header{
    border: 1px solid black;
    height: 15px;
    background-color:#0a2826;
    border-radius: 15px 15px 0px 0px;
[4:28 p. m., 7/12/2022] Luisa Fernanda: color: white;
    text-align: center;  
    padding-bottom: 25px;
    font-size: 15px;
}
aside ul li{
    font-size: 18px;
    display: block;
    text-align: left;
    padding: 0px 0px;
}
aside input{
    height: 10px;
    width: 180px;
}
.bnt{
    border: 1px solid black;
    border-radius: 3px;
    display: block;
    margin-right: auto;
    margin-left: auto;
}
footer{
    border: 1px solid black;
    height: 70px;
    background-color: #0a2826;
    color: #94a4a6;
    text-align: center;
    border-radius: 0px 0px 15px 15px;
}
~~~
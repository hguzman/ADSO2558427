~~~
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="estilos.css">
    
    <title>caninos y felinos</title>
</head>
<body>
    <main>
        <header><img src="img.png" alt="error al cargar logo"></header>
        <nav>
            <ul> 
                <li>.Servicios.</li>
                <li>.Productos.</li>
                <li>.Guarderia.</li>
                <li>.Promociones.</li>
            
            </ul>
        </nav>
        <section>
            <article class="arriba">
                <h4>Cuidados y educacion para su perro</h4>
                <p><img class="derecha" src="perro1.png" alt="error">equam, ium fugiandebis sit, qui occab ipienihit as moluptatur rem et ulparci psanis mo voluptia pa et, offictur?
                dusdae volore, que peribus sapist, sande volenis sun</p>
            </article>
            <article class="abajo"><h4>salir de viaje con su mascota</h4>
                <p><img class= "derecha" src="perro2.png" alt="">equam, ium fugiandebis sit, qui occab ipienihit as moluptatur rem et ulparci psanis mo voluptia pa et, offictur?
                    dusdae volore, que peribus sapist, sande volenis sun</p></article>
        </section>
        <aside>
            <header>
                <h4>Solicitar cita medica</h4>
            </header>
            <form>
                <ul>
                    <li><label>Mascota: <input type="ingrese nombre"></label><br><br></li>
                    <li><label>Edad:    <input type=""></label><br><br></li>
                    <li><label>Raza:    <input type="ingrese raza"></label><br><br></li>
                    <li><label>Fecha:   <input type="dd/mm/aaaa"></label><br><br></li>
                    <li><label>Hora:    <input type="--:-- ----"></label><br><br></li>
                    <li><label>Amo:     <input type="ingrese nombre"></label><br><br></li>
                </ul>
                <button class="bnt success">validar cita</button>
            </form>
        </aside>
        <footer><p> 
            contactenos
        <br>
            linea gratuita 018000-00001
        <br>
             correo: preguntas@caninosyfelinos.com 
    </b></p></footer>
    </main>
    
</body>
</html>


# CSS

*{
    margin: 0;
    padding: 0;
}
header{
    border: 1px solid sandybrown;
    height: 170px;
    border-radius: 10px 10px 0px 0px;
}

main{
    
    border: 3px solid rgb(47, 33, 78);
    height: 730px;
    width: 700px;
    margin: auto;
}

nav{
    background-color:#1c4a4b;
    border: 1px solid rgb(173, 34, 34);
    height: 57px;
    width: 700px;
    border-radius: 0px 0px 10px 10px;
}

section{
    
    height: 300px;
    width: 280px;
    display: inline-block;
    border-radius: 10px;


}

.arriba{
    background-color: rgba(255, 255, 112, 0.918);
    border: 1px solid rgb(0, 0, 0);
    height: 182px;
    width: 368px;
    border-radius: 10px 10px 0px 0px;
    margin-bottom: 10px;
    margin-top: 10px;
    float: left;
}
.abajo{
    background-color: rgba(255, 255, 112, 0.918);
    border: 1px solid rgb(0, 0, 0);
    height: 182px;
    width: 368px;
    border-radius: 0px 0px 10px 10px;
    margin-bottom: 10px;
    margin-top: 10px;
    float: left;
}

aside{
    border: 1px solid rgb(46, 231, 129);
    height: 387px;
    width: 300px;
    margin-left: 15px;
    margin-top: 10px;
    border-radius: 10px;
    background-color: #1a4a2a;
    float: right;

}
aside header{
    background-color:#1c4a4b;
    border: 1px solid white;
    height: 58px;
    text-align: center;
    color: white;
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
    border: 1px solid rgb(75, 175, 233);
    border-radius: 10px;
    height: 80px;
    margin-bottom: auto;
    margin-top: 100px;
    background-color:#1c4a4b;
    text-align: center;
}

img{
    height: 170px;
    width: 700px;
}

ul li{
    display: inline-block;
    margin-left: 40px;
    color: antiquewhite;
    text-align: center;
    border-right: 2px solid white;
    padding: 7px 15px;
}
.abajo img{
    border: 2px solid black;
    height: 70px;
    width: 70px;
    float: right;
    margin-right: 10px;
    border-radius: 10px;
}
.arriba img{
    border: 2px solid black;
    height: 70px;
    width: 70px; 
    float: right;
    margin-right: 10px;
    border-radius: 10px;
}
~~~
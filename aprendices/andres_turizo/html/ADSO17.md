#### HTML
~~~
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <header>
            <img src="header.jpg">
        </header>
        <nav>
            <ul>
                <li>. Servicios .</li>
                <li>. Productos .</li>
                <li>. Guardería .</li>
                <li id="linea">. Promociones .</li>
            </ul>
        </nav>
        <aside>
            <header font-family:tahoma>
                Solicitar cita medica
            </header>
            <p>
                <form action="">
                    <div>
                        <label> Mascota: </label>
                        <input type="text">
                    </div>
                    <div>
                        <label> Edad: </label>
                        <input type="number">
                    </div>
                    <div>
                        <label> Raza: </label>
                        <input type="text">
                    </div>
                    <div>
                        <label> Fecha: </label>
                        <input type="date">
                    </div>
                    <div>
                        <label> Hora: </label>
                        <input type="time">
                    </div>
                    <div>
                        <label> Amo: </label>
                        <input type="text">
                    </div>
                    <input id="boton_validar" value="VALIDAR CITA" type="button">
                </form>
            </p>
        </aside>
        <section>
            <article id="articulo1">
                <header id="header_articulo1">
                    Cuidados y educación para su perro
                </header>
                <p id="texto_articulo1">
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Doloremque, fugit cupiditate praesentium repellat quam iusto culpa, consectetur quis                         temporibus ipsam repudiandae facilis eos autem doloribus. Praesentium temporibus esse nostrum atque!
                </p>
                <img id="mascota1" src="perro1.png">
                <br>
                <a href="" class="links"> 
                    Ver más...
                </a>
            </article>
            <article id="articulo2">
                <header id="header_articulo2">
                    Salir de viaje con su mascota
                </header>
                <p id="texto_articulo2">
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Doloremque, fugit cupiditate praesentium repellat quam iusto culpa, consectetur quis                         temporibus ipsam repudiandae facilis eos autem doloribus. Praesentium temporibus esse nostrum atque!
                </p>
                <img id="mascota2" src="perro2.png">
                <br>
                <a href="" class="links">
                    Ver más...
                </a>
            </article>
        </section>
        <footer>
            <p> 
                Contáctenos 
            </p>
            <p> 
                Linea gratuita 01000 - 00001 
            </p>
            <p> 
                Correo: preguntas@caninosyfelinos.com 
            </p>
        </footer>
    </main> 
</body>
</html>
~~~
#### CSS
~~~
main{
    width: 820px;
    height: 700px;
    margin: auto;
}
header{
    width: 800px;
    height: 150px;
}
header img{
    margin: 150px;
    width: 800px;
    margin: auto;
}
nav{
    width: 800px;
    height: 70px;
    background-color: #02340D;
    border-radius: 0px 0px 15px 15px;
}
nav li{
    display: inline-flex;
    width: 170px;
    height: 50px;
    margin-top: 10px;
    color: white;
    font-size: 22px;
    justify-content: center;
    align-items: center;
    border-right: 2px solid white;
}
#linea{
    border: 0px;
}
aside{
    width: 300px;
    height: 440px;
    margin-top: 10px;
    float: right;
    margin-right: 20px;
    background-color:  #297339;
    border-radius: 15px 15px 15px 15px;
}
aside header{
    background-color: #02340D;
    height: 50px;
    width: 300px;
    border-radius: 15px 15px 0px 0px;
    color: white;
    justify-content: center;
    align-items: center;
    display: flex;
    font-size: 22px;
}
aside p{
    width: 300px;
    text-align: center;
    margin-left: 10px;
}
aside b{
    color: white;
    display: inline-flex;
    margin-top: 15px;
    margin-bottom: 10px;
    margin-right: 10px;
    width: 50px;
}
aside input{
    width: 150px;
    margin-right: 30px;
}
aside form label{
    color: #d9e0e1;
    display: inline-block;
    padding-bottom: 15px;
    padding-left: 40px ;
    padding-top: 15px;
}

#boton_validar{
    margin-top: 15px;
    margin-left: 75px;
}
section{
    width: 480px;
    height: 450px;
    margin-top: 10px;
    margin-bottom: 10px;
    float: left;
}
section header{
    margin-left: 20px;
    height: 25px;
    width: 450px;
    font-weight: bold;
    font-size: 22px;
}
#header_articulo1{
    font: tahoma;
}
#articulo1{
    width: 480px;
    height: 210px;
    margin-bottom: 20px; 
    background-color:  #F6F88D;
    border-radius: 15px 15px 0px 0px;
}
#articulo2{
    width: 480px;
    height: 210px;
    background-color:  #F6F88D;
    border-radius: 0px 0px 15px 15px;
}
#texto_articulo1{
    margin-left: 20px;
    justify-content: center;
    float: left;
    width: 285px;
    height: 120px;
    font-size: 15px;
}
#texto_articulo2{
    margin-left: 20px;
    justify-content: center;
    float: left;
    width: 285px;
    height: 120px;
    font-size: 15px;
}
#mascota1{
    float: right;
    width:  140px;
    height: 130px ;
    margin-right: 10px;
    background-color:  #F6F88D;
    border: 2px solid black;
    border-radius: 15px 15px 15px 15px;
}
#mascota2{
    float: right;
    width:  140px;
    height: 130px ;
    margin-right: 10px;
    background-color:  #F6F88D;
    border: 2px solid black;
    border-radius: 15px 15px 15px 15px;
}
.links{
    display: inline-block;
    margin-left: 20px;
    width: 200px;
}
footer{
    width: 800px;
    height: 70px;
    clear: both;
    background-color: #02340D;
    border-radius: 0px 0px 15px 15px;
}
footer p{
    color: white;
    text-align: center;
    margin: auto;
}
~~~

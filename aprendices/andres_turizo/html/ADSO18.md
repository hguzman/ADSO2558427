#### HTML
~~~
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title> Banco </title>
</head>
<body>
    <main>
        <header>
            <img src="banner.jpeg"> 
        </header>
        <nav>
            <ul>
                <li>. Créditos .</li>
                <li>. leasing .</li> 
                <li>. Ahorros .</li>
                <li id="linea">. Servicio al cliente .</li>
            </ul>
            <aside>
                <article id="formulario">
                    <header>  INGRESA A TU CUENTA</header>
                    <b> Cuenta: </b>
                    <input type="text"><br>
                    <b> Tipo: </b>
                    <input type="text"><br>
                    <b> Clave: </b>
                    <input type="text"><br>
                    <button id="boton_ingresar">Ingresar</button>
                </article>
                <article id="creditos">
                    <header>Transacciones</header>
                    <p>Banca Personal</p>
                    <p>Banca Empresarial</p>
                    <p>Banco seguros</p>
                    <p>Pago de facturas</p>
                    <header>Tarjetas de crédito</header>
                    <p>Credi Visa</p>
                    <p> Credi Mastercard </p>                    
                </article>
            </aside>
            <section>
                <article id="tarjeta">
                    <header> 
                        SOLICITA NUESTROS PRODUCTOS 
                    </header>
                    <img src="tarjeta.jpeg" id="tarjeta_img">
                    <p> 
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi adipisci accusantium aspernatur, repellat, aperiam perferendis eveniet quas possimus iure cum iusto corrupti, nulla aut laborum doloremque tempora distinctio quaerat magni.
                    </p>
                </article>
                <article id="libros">
                    <header>
                        AHORRO ESTUDIANTIL
                    </header>
                    <img src="libros.jpeg">
                    <p> 
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi adipisci accusantium aspernatur, repellat, aperiam perferendis eveniet quas possimus iure cum iusto corrupti, nulla aut laborum doloremque tempora distinctio quaerat magni.
                    </p>
                </article>
                </article>
                <article id="llaves">
                    <header>
                        CRÉDITO VEHÍCULOS
                    </header>
                    <img src="llaves.jpeg">
                    <p> 
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi adipisci accusantium aspernatur, repellat, aperiam perferendis eveniet quas possimus iure cum iusto corrupti, nulla aut laborum doloremque tempora distinctio quaerat magni.
                    </p>
                </article>
                <article id="casa">
                    <header>
                        CRÉDITO HIPOTECARIO
                    </header>
                    <img src="casa.jpeg">
                    <p>
                         Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi adipisci accusantium aspernatur, repellat, aperiam perferendis eveniet quas possimus iure cum iusto corrupti, nulla aut laborum doloremque tempora distinctio quaerat magni.
                    </p>
                </article>
            </section>
            <footer>
                <p> Contáctenos </p>
                <p> Línea gratuita 018000 - 00001 </p>
                <p> Banco entidad financiera - Todos los derechos reservados. </p>
            </footer>
        </nav>
    </main>
</body>
</html>
~~~
#### CSS
~~~
main{
    width: 720px;
    height: 720px;
    margin: auto;
}
header{
    width: 720px;
    height: 150px;
}
header img{
    margin: 150px;
    width: 720px;
    margin: auto;
    border-radius: 15px 15px 0px 0px ;
}
nav{
    border-top: 20px solid #2B2A2A;
    width: 720px;
    height: 70px;
    background-color:darkgoldenrod;
    border-radius: 0px 0px 15px 15px;
}
nav li{
    display: inline-flex;
    width: 160px;
    height: 40px;
    margin-bottom: 7px;
    color: black;
    font-size: 18px;
    justify-content: center;
    align-items: center;
    border-right: 2px solid white;
}
#linea{
    border:0px;
}
aside{
    width: 330px;
    height: 350px;
    float: left;
}
aside article{
    display: inline-block;
    margin-bottom: 10px;
}
#formulario{
    width: 330px;
    height: 200px;
    background-color: #B2B2B2;
    margin-bottom: 10px;
    border-radius: 20px 20px 0px 0px;
}
#formulario header{
    height: 35px;
    font-size: 15px;
    background-color: #2B2A2A;
    color: white;
    width: 330px;
    border-radius: 20px 20px 0px 0px;
    margin-right: 5px;
}

#formulario b{
    color: black;
    display: inline-flex;
    margin-top: 15px;
    margin-left: 15px;
    width: 65px;
}
#formulario input{
    width: 220px;
    
}
#formulario header {
    display: flex;
    align-items: center;
    justify-content: center;
}
#boton_ingresar{
    margin-top:20px;
    margin-left:130px;
    background-color: darkgoldenrod;
}
#creditos {
    width: 330px;
    height: 185px;
    background-color: #2B2A2A ;
    border-bottom: 1px solid grey;
}

#creditos header{
    background-color: black;
    color: darkgoldenrod;
    width: 330px;
    height: 15px;
    font-size: 15px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-style: italic;
}
#creditos p{
    color: white;
    display:flex;
    align-items: center;
    justify-content: center;
    font-size: 12px;
    height: 11px;
    border-bottom: 1px solid gray
    
}
section{
    float: right;
    width: 390px;
    height: 400px;
    margin-bottom: 10px;
}
section article{
    width: 180px;
    height: 195px;
    margin-left: 12px;
    margin-bottom: 5px;
    display: inline-block;
    background-color: #e6e4e5;
}
section header{
    background-color: #2B2A2A;
    height: 40px;
    width: 180px;
    color: white;
    align-items: center;
    justify-content: center;
    display: flex;
    margin: auto;
    font-size: 10px;
}
section article img{
    width: 120px;
    height: 85px;
    margin: auto;
    align-items: center;
    justify-content: center;
    display: flex;
}
section article p{
    width: 160px;
    margin: auto;
    align-items: center;
    font-size: 9px;
    height: 20px;
    justify-content: center;
}
#tarjeta{
    border-radius: 20px 0px 0px 0px;
}
#tarjeta_img{
    width: 150px;
    height: 85px;
}
#libros{
    border-radius: 0px 20px 0px 0px; 
}
#llaves{
    border-radius: 0px 0px 0px 20px;
}
#casa{
    border-radius: 0px 0px 20px 0px;
}
footer{
    clear: both;
    width: 720px;
    height: 100px;
    background-color: #2B2A2A;
    border-radius: 0px 0px 15px 15px;
}
footer p{
    color: gray;
    text-align: center;
    margin:auto;
    justify-content: center;
    padding-top: 8px;
}
~~~

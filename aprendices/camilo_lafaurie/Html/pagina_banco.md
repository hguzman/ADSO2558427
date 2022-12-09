## INDEX

~~~
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="estilo.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <main>
        <header><img src="banco1.png" alt="imagen"></header>
        <nav><b>
        <ul>
            <li>.Creditos.</li>
            <li>.leasing.</li>
            <li>.Ahorros.</li>
            <li>.Servicio al ciente.</li></b>
        </ul>
        </nav>
        <section>
            <article class="cuadro1">
                <h1>SOLICITA NUESTROS PRODUCTOS</h1>
                <img src="/card.png" alt="">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est eaque temporibus et quod ratione repellat illum eos a natus, asperiores alias similique quia cupiditate excepturi? Aperiam obcaecati et odit labore.</p>
            </article>
            <article class="cuadro2">
                <h1>AHORRO ESTUDIANTIL</h1>
                <img src="/cuadro2.png" alt="">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos numquam at accusantium quaerat aspernatur neque excepturi omnis eum quidem voluptatibus quas libero doloribus minus harum, soluta, temporibus, reprehenderit quae magnam!</p>
            </article>
            <article class="cuadro3">
                <h1>CREDITOS VEHICULOS</h1>
                <img src="/cuadro3.png" alt="">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quas atque totam eligendi architecto aspernatur accusamus, magnam ipsam natus rem assumenda! Quis aliquam odit non dicta similique error qui distinctio iusto?</p>
            </article>
            <article class="cuadro4">
                <h1>CREDITO HIPOTECARIO</h1>
                <img src="/cuadro4.png" alt="">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias fuga ea laboriosam repellendus, adipisci optio sequi nisi est, vero laborum similique, perspiciatis soluta modi inventore incidunt aliquid necessitatibus eligendi. Tenetur.</p></article>
        </section>    
        <aside>
            <article class= "cuenta">
                <h1>INGRESA A TU CUENTA</h1>
                <form action=""></form>
            </article>
            <article class= "trasnacciones">
            <h2>TRANSACCIONES</h1>
                <ul>
                    <li>Banca personal</li>
                    <li>Banca empresarial</li>
                    <li>Banca seguros</li>
                    <li>Pago de facturas</li>
                </ul>
            <h2>TARJETAS DE CREDITOS</h1>
                <ul>
                    <li>Credi VISA</li>
                    <li>Credi Mastercard</li>
                </ul>
            </article>
           </aside>
            <footer><br>
                <p>Contactos</p>
                <p>Linea gratuita 018000-00001</p>
                <p>Banco entidad finaciera- Todos los derechos reservados</p>
            </footer>
    </main>
    
</body>
</html>
~~~

## ESTILOS

~~~
* {
    font-family: Arial, Helvetica, sans-serif;
}
main{
    width: 1500px;
    height: 1570px;
    border-radius: 40px;
    margin: auto;
}

header{
    height: 300px;
    border-radius: 40px 40px 0 0;
}

header img{
    height: 300px;
    width: 1500px;
    border-radius: 40px 40px 0 0;
}

nav {
    height: 120px;
    border-radius: 0 0 40px 40px;
    background-color: #f6bd18;
    display: flex;
    align-items: center;
    justify-content: center;
    border-top: 15px solid rgb(0, 0, 0);
    
}

nav a {
    text-decoration: none;
}

nav ul li {
    display: inline-flex;
    color: black;
    font-size: 45px;
    margin: 20px 50px 20px 0;
    font-family: Arial;
    border-right: 4px solid white;
    padding-right: 50px; 
}

section{
    border: 1px solid rgb(223, 18, 18);
    height: 880px;
    width: 980px;
    margin: 10px 0 10px 15px;
    border-radius: 10px;
    float: right;
    margin-right: 12px;
}
article{
    height: 428px;
    width: 470px;
    margin: 7px;
    background-color: rgb(245, 245, 245);
    float: left;
}
.cuadro1, .cuadro1 h1{
    border-radius: 40px 0 0 0;
}
.cuadro2, .cuadro2 h1{
    border-radius: 0 40px 0 0;
}
.cuadro3{
    border-radius: 0 0 0 40px;
}
.cuadro4{
    border-radius: 0 0 40px 0;
}
article img{
    width: 300px;
    height: 200px;
    margin: 20px 75px 5px 65px;
}

article h1{
    color: white;
    background-color: #2c2c2c;
    font-size: 22px;
    height: 70px;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
}
article p{
    font-size: 13px;
    margin: 20px 20px 0 20px;
    text-align: justify;
}
aside{
    border: 1px solid rgb(136, 15, 235);
    height: 899px;
    width: 480px;
    display: inline-block;
    margin: 15px 0 10px 0;
    border-radius: 15px;

}

aside .cuenta{
    width: 460px;
    height: 370px;
    border-radius: 40px 40px 0 0;
    background-color: rgb(207, 207, 207);
}

aside .cuenta h1{
    
    color: white;
    background-color: #2c2c2c;
    font-size: 30px;
    height: 70px;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 40px 40px 0 0;
}

aside .trasnacciones{
    width: 460px;
    height: 505px;
    margin: 20px 0 0 0;
    padding: 1px;
    background-color: #232323 ;
    border-bottom: 1px solid grey;
    margin: 0 0px 12px 7px
}

aside .trasnacciones h2{
    background-color: rgb(0, 0, 0);
    color: #f6bd18;
    height: 52px;
    font-size: 30px;
    margin-top: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
}

aside .trasnacciones ul{
    padding: 0;
}
aside .trasnacciones ul li{
    color: rgb(192, 187, 187);
    text-decoration: none;
    display:flex;
    align-items: center;
    justify-content: center;
    margin: 25px;
    font-size: 25px;
    border-bottom: 1px solid rgb(88, 88, 88)
}


footer {
    clear: both;
    background-color: #1c1c1d;
    height: 173px;
    border-radius: 0 0 40px 40px;
    display: block;
    padding: 50px 0 0 0;
    margin-top:10px;
}

footer p{
    font-size: 27px;
    display: flex;
    margin: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
}
~~~
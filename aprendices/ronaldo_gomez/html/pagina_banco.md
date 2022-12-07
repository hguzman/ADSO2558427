# PAGINA WEB DE BANCO
![Banco](pagina_banco.png)
### INDEX
~~~
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="stilos.css">
    <title>Banco</title>
</head>
<body>
    <main>
        <header><img src="img/encabezado.jpeg" alt="imagen"></header>
        <nav><b>
        <ul>
            <li>.Créditos.</li>
            <li>.Leasing.</li>
            <li>.Ahorros.</li>
            <li>Servicio al ciente.</li></b>
        </ul>
        </nav>
        <section>
            <article class="primero">
                <h1>SOLICITA NUESTROS PRODUCTOS</h1>
                <img src="img/tarjeta.jpeg" alt="">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est eaque temporibus et quod ratione repellat illum eos a natus, asperiores alias similique quia cupiditate excepturi? Aperiam obcaecati et odit labore.</p>
            </article>
            <article class="segundo">
                <h1>AHORRO ESTUDIANTIL</h1>
                <img src="img/libros.jpeg" alt="">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos numquam at accusantium quaerat aspernatur neque excepturi omnis eum quidem voluptatibus quas libero doloribus minus harum, soluta, temporibus, reprehenderit quae magnam!</p>
            </article>
            <article class="tercero">
                <h1>CREDITOS VEHICULOS</h1>
                <img src="img/llaves.jpeg" alt="">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quas atque totam eligendi architecto aspernatur accusamus, magnam ipsam natus rem assumenda! Quis aliquam odit non dicta similique error qui distinctio iusto?</p>
            </article>
            <article class="cuatro">
                <h1>CREDITO HIPOTECARIO</h1>
                <img src="img/casa.jpeg" alt="">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias fuga ea laboriosam repellendus, adipisci optio sequi nisi est, vero laborum similique, perspiciatis soluta modi inventore incidunt aliquid necessitatibus eligendi. Tenetur.</p></article>
        </section>    
        <aside>
            <article class= "formulario">
                <h1>INGRESA A SU CUENTA</h1>
            </article>
            <article class= "opciones">
                <h2>TRANSACCIONES</h2>
                    <ul>
                        <li>Banca personal</li>
                        <li>Banca empresarial</li>
                        <li>Banca seguros</li>
                        <li>Pago de facturas</li>
                    </ul>
                    <h2>TARJETAS DE CRÉDITO</h2>
                    <ul>
                        <li>Credi visa</li>
                        <li>Credi mastercard</li>
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

### STILOS.CSS

~~~
main{
    width: 1500px;
    height: 1570px;
    border-radius: 40px;
    margin: auto;
}

header{
    height: 300px;
    border-radius: 40px 40px 0 0;
    border-color: 2px solid;
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
    width: 1495px;
}

nav a {
    text-decoration: none;
}

nav ul li {
    display: inline-flex;
    color: black;
    font-size: 40px;
    margin: 20px 50px 20px 0;
    font-family: Arial;
    border-right: 2px solid white;
    padding-right: 50px; 
}

section{
    height: 920px;
    width: 950px;
    margin-right: 100px;
    margin: 10px 0 10px 15px;
    border-radius: 10px;
    float: right;
}
article{
    height: 440px;
    width: 455px;
    margin: 7px;
    background-color: rgb(245, 245, 245);
    float: left;
}

.primero, .primero h1{
    border-radius: 30px 0 0 0;
}

.segundo, .segundo h1{
    border-radius: 0 30px 0 0;
}

.tercero{
    border-radius: 0 0 0 30px;
}

.cuatro{
    border-radius: 0 0 30px 0;
}

article img{
    width: 300px;
    height: 220px;
    margin: 20px 75px 5px 65px;
}

article h1{
    color: white;
    background-color: #080808;
    font-size: 22px;
    height: 70px;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
}
article p{
    font-size: 17px;
    margin: 20px 20px 0 20px;
    text-align: justify;
}

aside{
    margin-top: 15px;
    height: 925px;
    width: 510px;
    display: inline-block;
    margin: 15px 0 10px 0;
    border-radius: 15px;
    border-color: 2px solid black;
}
aside .formulario{
    border-radius: 40px 40px 0 0;
    height: 370px;
    width: 480px;
    border-radius: 40px 40px 0 0;
    background-color: gainsboro;
}

.formulario, .formulario h1{
    border-radius: 40px 40px 0 0;
}


aside .opciones{
    width: 480px;
    height: 500px;
    margin: 20px 0 0 0;
    padding: 1px;
    background-color: #080808;
}

aside .opciones h2{

    color: #f6bd18;
    font-size: 30px;
    margin-top: 30px;
    display: flex;
    align-items: center;
    justify-content: center;
}

aside .opciones ul{
    
    padding: 0;
}
aside .opciones ul li{
    background-color:  solid #6c6c6c;
    color: white;
    text-decoration: none;
    display:flex;
    align-items: center;
    justify-content: center;
    margin: 25px;
    font-size: 27px;
    
}

footer {
    clear: both;
    background-color: #1c1c1d;
    height: 173px;
    border-radius: 0 0 40px 40px;
    display: block;
    padding: 50px 0 0 0;
}

footer p{
    font-size: 33px;
    display: flex;
    margin: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
}
~~~
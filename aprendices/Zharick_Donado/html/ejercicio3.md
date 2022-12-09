### Ejercicio banco INDEX
~~~
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style.css">
    <title>BANCO</title>
</head>
<body>
    <main>
        <header>
        <img src="img/bank1.jpg" alt="image">
    </header>
        <nav><b>
        <ul>
            <li>.Creditos.</li>
            <li>.leasing.</li>
            <li>.Ahorros.</li>
            <li>Servicio al ciente.</li></b>
        </ul>
        </nav>
        <section>
            <article class="cuadro1">
                <h1>SOLICITA NUESTROS PRODUCTOS</h1>
                <img src="img/bank2.jpg" alt="image">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est eaque temporibus et quod ratione repellat illum eos a natus, asperiores alias similique quia cupiditate excepturi? Aperiam obcaecati et odit labore.</p>
            </article>
            <article class="cuadro2">
                <h1>AHORRO ESTUDIANTIL</h1>
                <img src="img/bank3.jpg" alt="image">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos numquam at accusantium quaerat aspernatur neque excepturi omnis eum quidem voluptatibus quas libero doloribus minus harum, soluta, temporibus, reprehenderit quae magnam!</p>
            </article>
            <article class="cuadro3">
                <h1>CREDITOS VEHICULOS</h1>
                <img src="img/bank4.jpg" alt="image">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quas atque totam eligendi architecto aspernatur accusamus, magnam ipsam natus rem assumenda! Quis aliquam odit non dicta similique error qui distinctio iusto?</p>
            </article>
            <article class="cuadro4">
                <h1>CREDITO HIPOTECARIO</h1>
                <img src="img/bank5.jpg" alt="image">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias fuga ea laboriosam repellendus, adipisci optio sequi nisi est, vero laborum similique, perspiciatis soluta modi inventore incidunt aliquid necessitatibus eligendi. Tenetur.</p></article>
        </section>    
        <aside>
                <div class="cuenta">
                    <h1>INGRESA TU CUENTA</h1>
                    <form action="" method="post">
                        <ul>
                         <li>
                           <label for="cuenta">Cuenta:</label>
                           <input type="text" id="cuenta" name="cuenta">
                         </li>
                         <li>
                           <label for="tipo">Tipo:</label>
                           <input type="" id="tipo" name="tipo">
                         </li>
                         <li>
                           <label for="clave">Clave:</label>
                           <input maxlength="4" type="password" id="clave" name="clave"></input>
                         </li>
                        </ul>
                        <button type="submit">Ingresar</button>
                    </form>
                </div>
                <form action=""></form>
            </article>
            <article class= "transacciones">
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

### SYTLE CSS

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
}

header img{
    height: 300px;
    width: 1500px;
    border-radius: 40px 40px 0 0;
}

nav {
    display: flex;
    align-items: center;
    justify-content: center;
    border-top: 15px solid rgb(0, 0, 0);
    height: 120px;
    border-radius: 0 0 40px 40px;
    background-color: #f6bd18;
   
}

nav ul li {
    font-family: Arial;
    border-right: 4px solid white;
    padding-right: 50px; 
    display: inline-flex;
    color: black;
    font-size: 35px;
    margin: 20px 50px 20px 0;
}

section{

    border-radius: 10px;
    float: right;
    margin-right: 12px;
    border: 1px solid rgb(255, 255, 255);
    height: 880px;
    width: 980px;
    margin: 10px 0 10px 15px;
}
article{
    height: 428px;
    width: 470px;
    margin: 7px;
    background-color: rgb(245, 245, 245);
    float: left;
}

article img{
    width: 300px;
    height: 200px;
    margin: 20px 75px 5px 65px;
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


article h1{
    margin: auto;
    font-family: Arial;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    background-color: #000000;
    font-size: 22px;
    height: 70px;
   
}
article p{
    font-size: 13px;
    margin: 20px 20px 0 20px;
    text-align: justify;
}
aside{
    border: 1px solid rgb(251, 251, 251);
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
    
    height: 70px;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 40px 40px 0 0;
    color: white;
    background-color: #000000;
    font-size: 30px;
   
}
aside form li{
    font-size: 30px;
    margin: 20px 40px 10px 0;
    background-color: #ffffff;
    color: #000000;
    list-style: none;
}
aside .transacciones{
    width: 460px;
    height: 505px;
    margin: 20px 0 0 0;
    padding: 1px;
    background-color: #232323 ;
    border-bottom: 1px solid grey;
    margin: 0 0px 12px 7px
}

aside .transacciones h2{

    align-items: center;
    justify-content: center;
    background-color: rgb(0, 0, 0);
    color: #f6bd18;
    height: 52px;
    font-size: 30px;
    margin-top: 8px;
    display: flex;
   
}

aside .transacciones ul{
    padding: 0;
}
aside .transacciones ul li{
    color: rgb(192, 187, 187);
    text-decoration: none;
    display:flex;
    align-items: center;
    justify-content: center;
    margin: 25px;
    font-size: 25px;
    border-bottom: 1px solid rgb(88, 88, 88)
}


footer p{
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 27px;
    display: flex;
    margin: 0;
  
}

footer {
    border-radius: 0 0 40px 40px;
    display: block;
    padding: 50px 0 0 0;
    margin-top:10px;
    clear: both;
    background-color: #1c1c1d;
    height: 173px;
   
}

.cuenta ul li{
    height: 50px;

}

input{
    height: 30px;
    width: 250px;
}

button{
   margin-left: 160px;
    height: 50px;
    width: 120px;
}
~~~

### Ejercicio banco INDEX
~~~
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style.css">
    <title>BANCO</title>
</head>
<body>
    <main>
        <header>
        <img src="img/bank1.jpg" alt="image">
    </header>
        <nav><b>
        <ul>
            <li>.Creditos.</li>
            <li>.leasing.</li>
            <li>.Ahorros.</li>
            <li>Servicio al ciente.</li></b>
        </ul>
        </nav>
        <section>
            <article class="cuadro1">
                <h1>SOLICITA NUESTROS PRODUCTOS</h1>
                <img src="img/bank2.jpg" alt="image">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est eaque temporibus et quod ratione repellat illum eos a natus, asperiores alias similique quia cupiditate excepturi? Aperiam obcaecati et odit labore.</p>
            </article>
            <article class="cuadro2">
                <h1>AHORRO ESTUDIANTIL</h1>
                <img src="img/bank3.jpg" alt="image">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos numquam at accusantium quaerat aspernatur neque excepturi omnis eum quidem voluptatibus quas libero doloribus minus harum, soluta, temporibus, reprehenderit quae magnam!</p>
            </article>
            <article class="cuadro3">
                <h1>CREDITOS VEHICULOS</h1>
                <img src="img/bank4.jpg" alt="image">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quas atque totam eligendi architecto aspernatur accusamus, magnam ipsam natus rem assumenda! Quis aliquam odit non dicta similique error qui distinctio iusto?</p>
            </article>
            <article class="cuadro4">
                <h1>CREDITO HIPOTECARIO</h1>
                <img src="img/bank5.jpg" alt="image">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias fuga ea laboriosam repellendus, adipisci optio sequi nisi est, vero laborum similique, perspiciatis soluta modi inventore incidunt aliquid necessitatibus eligendi. Tenetur.</p></article>
        </section>    
        <aside>
                <div class="cuenta">
                    <h1>INGRESA TU CUENTA</h1>
                    <form action="" method="post">
                        <ul>
                         <li>
                           <label for="cuenta">Cuenta:</label>
                           <input type="text" id="cuenta" name="cuenta">
                         </li>
                         <li>
                           <label for="tipo">Tipo:</label>
                           <input type="" id="tipo" name="tipo">
                         </li>
                         <li>
                           <label for="clave">Clave:</label>
                           <input maxlength="4" type="password" id="clave" name="clave"></input>
                         </li>
                        </ul>
                        <button type="submit">Ingresar</button>
                    </form>
                </div>
                <form action=""></form>
            </article>
            <article class= "transacciones">
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

### SYTLE CSS

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
}

header img{
    height: 300px;
    width: 1500px;
    border-radius: 40px 40px 0 0;
}

nav {
    display: flex;
    align-items: center;
    justify-content: center;
    border-top: 15px solid rgb(0, 0, 0);
    height: 120px;
    border-radius: 0 0 40px 40px;
    background-color: #f6bd18;
   
}

nav ul li {
    font-family: Arial;
    border-right: 4px solid white;
    padding-right: 50px; 
    display: inline-flex;
    color: black;
    font-size: 35px;
    margin: 20px 50px 20px 0;
}

section{

    border-radius: 10px;
    float: right;
    margin-right: 12px;
    border: 1px solid rgb(255, 255, 255);
    height: 880px;
    width: 980px;
    margin: 10px 0 10px 15px;
}
article{
    height: 428px;
    width: 470px;
    margin: 7px;
    background-color: rgb(245, 245, 245);
    float: left;
}

article img{
    width: 300px;
    height: 200px;
    margin: 20px 75px 5px 65px;
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


article h1{
    margin: auto;
    font-family: Arial;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    background-color: #000000;
    font-size: 22px;
    height: 70px;
   
}
article p{
    font-size: 13px;
    margin: 20px 20px 0 20px;
    text-align: justify;
}
aside{
    border: 1px solid rgb(251, 251, 251);
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
    
    height: 70px;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 40px 40px 0 0;
    color: white;
    background-color: #000000;
    font-size: 30px;
   
}
aside form li{
    font-size: 30px;
    margin: 20px 40px 10px 0;
    background-color: #ffffff;
    color: #000000;
    list-style: none;
}
aside .transacciones{
    width: 460px;
    height: 505px;
    margin: 20px 0 0 0;
    padding: 1px;
    background-color: #232323 ;
    border-bottom: 1px solid grey;
    margin: 0 0px 12px 7px
}

aside .transacciones h2{

    align-items: center;
    justify-content: center;
    background-color: rgb(0, 0, 0);
    color: #f6bd18;
    height: 52px;
    font-size: 30px;
    margin-top: 8px;
    display: flex;
   
}

aside .transacciones ul{
    padding: 0;
}
aside .transacciones ul li{
    color: rgb(192, 187, 187);
    text-decoration: none;
    display:flex;
    align-items: center;
    justify-content: center;
    margin: 25px;
    font-size: 25px;
    border-bottom: 1px solid rgb(88, 88, 88)
}


footer p{
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 27px;
    display: flex;
    margin: 0;
  
}

footer {
    border-radius: 0 0 40px 40px;
    display: block;
    padding: 50px 0 0 0;
    margin-top:10px;
    clear: both;
    background-color: #1c1c1d;
    height: 173px;
   
}

.cuenta ul li{
    height: 50px;

}

input{
    height: 30px;
    width: 250px;
}

button{
   margin-left: 160px;
    height: 50px;
    width: 120px;
}
~~~


# PAGINA WEB DE CANINOS

### INDEX
~~~
<!DOCTYPE html>
<html lang="es-co">
<head>
    <meta charset="UTF-8">
   <link rel="stylesheet" href="stilos.css">
    <title>Caninos</title>
</head>
<body>
<main>
    <header><img src="img/encabezado.jfif" alt=""></header>
    <nav><ul>
        <li>.Servicios.</li>
        <li>.Productos.</li>
        <li>.Guardería.</li>
        <li>.Promociones.</li>
    </ul></nav>
    <section>
        <article class="arriba">
            <h1>Cuidados y educacion para su perro</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod magni assumenda modi unde, cupiditate dolore fuga repellat, animi doloribus, minima cumque. Perferendis explicabo iste commodi modi facilis dolore</p>    
            <img src="img/perro_arriba.jfif" alt="">   
        </article>
        <article class="abajo">
            <h1>Salir de viaje con su mascota</h1>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Itaque placeat, quidem quod at commodi eveniet eos amet libero inventore, possimus ad non nesciunt quia architecto, eligendi natus ducimus mollitia provident.</p>
            <img src="img/perro_abajo.jfif" alt="">
        </article>
    </section>
    <aside><header><p>Solicitar cita médica</p></header></aside>
    <footer>
        <p>contáctenos</p>
        <p>línea gratuita 018000-00001</p>
        <p>correo: preguntas@caninosyfelinos.com</p>
    </footer>
</main>
</body>
</html>
~~~

### STILOS.CSS

~~~
main{
    border: 1px solid rgb(255, 255, 255);
    border-radius: 40px;
    height: 1500px;
    margin: auto;
    width: 1500px;
}

header{
    border-top-left-radius: 40px;
    border-top-right-radius: 40px; 
    height: 350px;
}

header img{
    width: 1500px;
    height: 367px;
}

nav{
    background-color: #1c4a48;
    border-bottom-left-radius: 40px;
    border-bottom-right-radius: 40px;
    height: 150px;
    margin-bottom: 2px; 
    width: 1500px;
}

ul li {
    border-right: 2px solid white;
    border-left: 2px solid white;
    color: aliceblue;
    display: inline-flex;
    font-size: 38px;
    margin: 55px;
    margin-top: 45px;
    padding-right: 30px;
    padding-left: 30px;
}
section{
    display: inline-block;
    margin: 20px 0 20px 10px;
    height: 900px;
    width: 900px;
}

article{
    background-color: #fbf5b9;
    height: 350px;
    margin-bottom: 40px;
    margin-top: 50px;
    padding: 5px 0px 0px 25px;
}

.arriba{
    border-radius: 45px 45px 0 0;
    
}

.abajo{
    border-radius: 0 0 45px 45px;
}

article h1{
    font-size: 40px;
    margin: 20px 0 10px 0;
}

article p{
    display: inline-block;
    width: 600px;
    font-size: 30px;
    margin: 20px 0 0 0;
    font-size: 31px;
}

article img{
    border: 8px solid black;
    border-radius: 40px;
    float: right;
    margin: 0 20px 30px 0;
    height: 220px;
    width: 220px;
}


aside{
    background-color: #4a6e6e;
    font-size: 50px;
    float: right;
    height: 850px;
    width: 520px;
    display: inline-block;
    margin-top: 35px;
    margin-left: 50px;
    margin-bottom: 50px;
    border-radius: 50px;

}
aside header{
    height: 100px;
}

aside p{
    font-size: 50px;
    margin: auto;
    display: flex;  
    align-items: center;
    justify-content: center;
    color: white;
    background-color: #1c4a48;
    height: 140px;
    border-radius: 50px 50px 0 0;

}

footer{
    background-color: #1c4a48 ;
    height: 210px;
    border-radius: 0 0 55px 55px;
    padding: 30px 0 0 0;
}

footer p{
    font-size: 45px;
    color: rgb(176, 175, 175);
    display: flex;
    margin: 0;
    align-items: center;
    justify-content: center;
}
~~~

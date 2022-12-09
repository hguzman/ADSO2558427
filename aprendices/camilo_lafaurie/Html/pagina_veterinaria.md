## INDEX

~~~
<!DOCTYPE html>
<html lang="es-co">
<head>
    <meta charset="UTF-8">
   <link rel="stylesheet" href="estilos.css">
    <title>Caninos</title>
</head>
<body>
<main>
    <header><img src="animales.png" alt="imagen" ></header>
    <nav>
        <ul>
            <li>Servicios</li>
            <li>Productos</li>
            <li>Guarderia</li>
            <li>Alimentos </li>
        </ul>
    </nav>
    <section>
    <article class= "arriba">
        <h1>Cuidados y educacion para su perro</h1>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Soluta ratione autem corporis voluptas fuga perferendis sed fugit delectus nostrum quas? Esse quisquam quibusdam autem sint officiis, est ducimus eaque. Esse!</p>
        <img src="/perritozs.png" alt="imagen">
    </article>
    <article class= "abajo">
        <h1>salir de viaje con tu mascota</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat non veritatis ad suscipit, recusandae deserunt maxime nam, numquam animi, modi consequatur dolorem! Voluptatibus obcaecati molestias qui dignissimos, laboriosam quos illo!</p>
        <img src="/perritoz.png" alt="imagen">
    </article>
    </section>
    <aside>
        <header><p>Solicitar cita médica</p></header>
        
    </aside>
    <footer><br>
        <p>Contactos</p>
        <p>Linea gratuita 018000-00001</p>
        <p>Correo:preguntas@caninosyfelinos.com</p>
    </footer>
</main>
</body>
</html>
~~~


## ESTILOS

~~~
main{
    border: 1px solid rgb(224, 19, 19);
    width: 1500px;
    height: 1500px;
    border-radius: 40px;
    margin: auto;
}


header{
   
    height: 235px;
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;
}
img{
    height: 250px;
    width: 1500px;
    }


nav{
    
    height: 130px;
    border-bottom-left-radius: 40px;
    border-bottom-right-radius: 40px;
    margin-bottom: 2px;
    background-color: #beb315;
}
ul li{
    border-right: 1px solid white;
    color: rgb(255, 255, 255);
    display: inline-flex;
    font-size: 55px;
    font-family: Arial, Helvetica, sans-serif;
    margin: 30px 30px 30px 40px;
    padding-right: 40px;
}

section{
    
    height: 900px;
    width: 900px;
    display: inline-block;
    margin: 10px;
    margin-left: 10px ;
    margin-top: 30px;
    float:left;
}

article{
    border: 1px solid rgb(255, 255, 255);
    background-color: #fbf5b9;
    height: 370px;
    margin-bottom: 70px;
    margin-top: 0;
    border-radius: 10px;
    padding: 0 0 0 25px;
    
}
article img{
    width: 252px;
    float: right;
    margin: 20px 25px 0 0;
    border: 6px solid black;
    border-radius: 30px;
}
article h1{
    font-size: 40px;
    margin: 15px 0 0 0 ;
}
article p {
    display: inline-block;
    width: 500px;
    font-size: 32px;
}
.arriba{
    border-radius: 45px 45px 0 0;
}
.abajo{
    border-radius: 0 0 45px 45px;
}

aside{
    border: 1px solid rgb(16, 112, 40);
    height: 850px;
    width: 520px;
    display: inline-block;
    margin-left: 25px;
    margin-bottom: 10px;
    margin-top: 30px;
    border-radius: 50px;
    background-color: #4a6e6e;
    
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
    border-radius: 50px 50px 0 0 ;
}
footer{
    height: 210px;
    background-color: #1c4a48;
    padding: 30px 0 0 0;
    border-radius: 0 0 45px 45px;    
}
footer p{
    color: white;
    display: flex;
    font-size: 39px;
    justify-content: center;
    align-items: center;
    margin: 0;
    
}
~~~
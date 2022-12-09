### EJERCICIO VETERINARIA

<!DOCTYPE html>
<html lang="es-co">
<head>
    <meta charset="UTF-8">
   <link rel="stylesheet" href="style.css">
    <title>Veterinaria</title>
</head>
<body>
<main>
    <header><img src="img/perro.png" alt= "image" ></header>
    <nav>
        <ul>
            <li>Servicios</li>
            <li>Productos</li>
            <li>Guarderia</li>
            <li>Alimentos</li>
        </ul>
    </nav>
    <section>
        <article class = "arriba">
        <h1>Cuidados de las mascotas</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Earum, illo tempore autem nemo eum ut dolor sit quasi vero commodi consequuntur non qui aperiam alias reprehenderit nihil impedit ea. Assumenda.</p>
        <img src="img/perro2.jpg" alt="image">
        </article>  
    <article class = "abajo">
       <h1>Aliementos de tu canino</h1>
       <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut veritatis, harum magnam explicabo accusamus fugit id atque consequatur, architecto, rerum dolorem ea? Ut, reiciendis ad magnam cum repellendus eveniet dignissimos?</p>
       <img src="img/perro1.jpeg" alt="image">
       </article>

    </section>
    <aside>
        <header>
            <p>Solicitud de cita médica</p>
        </header>
    </aside>
    <footer>
        <p>Contactos</p>
        <p>Linea gratuita 018000-00001</p>
        <p>Correo:preguntas@caninosyfelinos.com</p>
    </footer>
</main>
</body>
</html>

### CSSmain{
    border: 1px solid rgb(255, 255, 255);
    width: 1500px;
    height: 1500px;
    border-radius: 40px;
    margin: auto;
}

header{
    border: 1px solid rgb(14, 14, 14);
    height: 250px;
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;
}

nav{
    border: 2px solid rgb(12, 12, 12);
    background-color: #1c4a48;
    height: 130px;
    border-bottom-left-radius: 40px;
    border-bottom-right-radius: 40px;
    margin-bottom: 2px;
}


section{
    border: 1px solid rgb(255, 251, 251);
    height: 850px;
    width: 850px;
    margin: 10px;
    margin-left: 10px ;
    margin-top: 0px;
    float: left;
    margin-bottom: 60px;
}

article{
    border: 1px solid rgb(22, 22, 22);
    height: 350px;
    margin-bottom: 40px;
    margin-top: 50px;
    border-radius: 10px;
    background-color: #fbf5b9;
}

article img{
    width: 180px;
    height: 180px;
    float: right;
    margin: 50px;
    margin-top: 1px;
    border: 5px solid rgb(0, 0, 0);
    border-radius: 40px ;
   
}

article p{
    display:inline-block;
    margin-top: 10px;
    width: 500px;
    height: 100px;
}

aside{
    border: 1px solid rgb(5, 5, 5);
    border-radius: 50px 50px 50px 50px;
    background-color: #4a6e6e;
    height: 850px;
    width: 520px;
    display: inline-block;
    margin-left: 25px;
    margin-bottom: 50px;
    margin-top: 30px;
    margin-left: 60px;
}

aside header{
    height: 120px;
    background-color: #1c4a48;
}

aside p{

    font-size: 40px;
    display: flex;
    padding-left: 50px;
    font-family: Arial;
    color:rgb(248, 248, 248);
}

footer{
    border: 2px solid rgb(24, 28, 29);
    background-color: #1c4a48;
    height: 300px;
    border-radius: 0px 0px 50px 50px;
    clear: both;
}

footer p{

    font-size: 35px;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;

}

.arriba{
    font-size: 30px;
    padding-left: 30px;
    border-radius: 40px 40px 0px 0px;

}

.abajo{
    font-size: 30px;
    padding-left: 30px;
    border-radius: 0px 0px 40px 40px;

}

img{
    border-radius: 10px 10px 0 0;
    height: 250px;
    width: 1495px;
}

ul li{ 
    display: inline-flex;
    color: aliceblue;
    font-size: 50px; 
    font-family:'Arial';
    margin: 30px 30px 30px 30px;
    border-right: 1px solid white;
    padding-right: 68px;
}
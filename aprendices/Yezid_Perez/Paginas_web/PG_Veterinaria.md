
## HTML5
```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="estilo.css">
    <title>Estructura html</title>
</head>
<body>
	<main>
    <header>
      <img src="banner2.png" alt="logo">
    </header>
    <nav class="navegador">
      <ul>
        <li class="menu">Servicios.</li>
        <li class="menu">.Productos.</li>
        <li class="menu">.Guarderia.</li>
        <li class="menu" id="menunolinea">Promociones.</li>
      </ul>
    </nav>
		<section>
			<article>
        <h3 class="subtitulo">Cuidados y educacion para su perro</h3>
        <p class="texto1">Tener a un perro implica una gran responsabilidad. Aunque los consejos para cuidar a tu mascota son sencillos</p>
        <img src="perro2.jpg" alt="perro dante" class="perros"/>
        <a href="https://www.mundodeportivo.com/elotromundo/mascotas/20180414/442177829913/tips-para-cuidar-a-tu-perro.html" class="informacion">Ver mas...</a>
      </article>
			<article> 
        <h3 class="subtitulo"> Salir de viaje con su mascota</h3>
        <p class="texto2">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt quo vitae fugit dolores </p>
        <img src="perro1.jpg" alt="perro labrador" class="perros"/>
        <a href="htts://google.com" class="informacion">Ver mas...</a>
      </article>
		</section>
       <aside class="formulario">
        <h3 class="subtit">Solicitar cita médica</h3>
        <form action="/my-handling-form-page" method="post">
          <ul>
           <li>
             <label for="nombredemascota">Mascota:</label>
             <input type="text" id="name" name="user_name">
           </li>
           <li>
             <label for="mail">Edad:</label>
             <input type="email" id="mail" name="user_mail">
           </li>
           <li>
             <label for="msg">mensaje:</label>
             <textarea id="msg" name="user_message"></textarea>
           </li>
           <li>
            <label for="relog">Hora:</label>
            <input type="text" id="hora" name="user_hora">
          </li>
          <li>
            <label for="Raza">Raza:</label>
            <input type="text" id="raz" name="user_raza">
          </li>
          </ul>
          <button class="botom" type="submit">Validar Cita</button>
         </form>
         
       </aside>
      <footer>
        <p class="piedepagina">Contactenos.</p>
        <p class="piedepagina">telefono Linea gratuita 018000-0001</p>
        <p class="piedepagina" id="email"> Correo:caninos@caninos.com</p>
      </footer>
    </main>
</body>
</html>
```
## CSS
```
header{
    
    height: 174px;
}

main{
 	
	height: 850px;
	margin: auto;
	width: 900px;
}
nav {
	border-radius: 0px 0px 20px 20px;
	background-color: #0a413e;
	height: 80px;
	padding-bottom: 8px;
	top: 100%;
}

.menu{
	color: #ffffff;
	margin-left: 5%;
	margin-right: 4%;
	padding: 10Spx;
	padding-top: 1px;
}

ul li{
	
	display: inline;
	color: #ffffff;
	font-size: 25px;
	margin-right: 59px;
	margin-left: 30px;
	padding: auto;
}


section{
	display: inline-block;
	float: left;
	height: 420px;
	width: 490px;
}

article{
	background-color: rgb(254, 251, 147);
	border-radius: 20px 20px 0px 0px;
	clear: both;
	height: 90px;
	margin-top: 15px;
	width: 280px;	
}


article{
	border-radius: 20px 20px 0px 0px;
	clear: both;
	height: 190px;
	margin-bottom: 15px;
	margin: auto;
	position: relative;
	width: 480px;

}

.perros{
	border: 1px solid black;
	border-radius: 20px 20px 20px 20px;
	display: block;
	height: 130px;
	top: 15%;
	margin-left: 60%;
	position: absolute;
	width: 30%;	
}

.informacion{
	display: inline-block;
	margin-left: 10px;
	margin-top: 63px;
	width: 50%;
}

.texto1{
	background-color: rgb(254, 251, 147);
	height: 10px;
	margin: 1rem;
	text-align: left;
	width: 250px;

}
.texto2{
	background-color: rgb(254, 251, 147);
	height: 10px;
	margin: 1rem;
	text-align: left;
	width: 300px;

}
.subtitulo{
	
	margin-left: 25px;
	text-align: center;
}

.subtit{
	
	background-color: #012317;
	color: rgb(252, 247, 247);
	margin:0px;
	text-align: center;
	height: 30px;
	top: 50px;
	padding: 13px;
	border-radius: 20px 20px 0px 0px;
	

}
aside{
	border-radius: 20px 20px 20px 20px;
	background-color: #365c4d;
	clear: both;
	display: inline-block;
	height: 399px;
	margin: 2%;
	position: relative;
	width: 379px;	
}

.formulario {
	box-sizing: border-box;
	display: inline-block;
	padding: 12px;
	position: absolute;
	text-align: left;
	margin: 1%;
	
}
label{
	
	display: block;
	font-size: 12px;
	font-family: Georgia, 'Times New Roman', Times, serif;
	padding: 2px;
	margin-top: 0.10%;
	
}

input, textarea{
	box-sizing: border-box;
	left: auto;
	width: 50%;
}
.botom{
	align-items: center;
	padding: 3px 8px;
	margin-left: 120px;
	top: 1rem;
	cursor: pointer;
	border-radius: 10px;
}

#name{
	margin-left: 30px;
	padding-right: 15px;
}
#msg{
	margin-left: 30px;

}
#mail{
	margin-left: 30px;
}

#hora{
	margin-left: 30px;
}
#raz{
	margin-left: 30px;
	
}

#p{

	align-items: center;
}

footer{
	border-radius: 0px 0px 25px 25px;
	background-color: #012317;
	clear: both;
	height: 100px;
	margin: auto;
	padding-bottom: auto;
	width: 900px;
}

.piedepagina{
	color: #cac8c8;
	font-size: monospace;
	text-align: center;
	
}

#email{
	margin-top: 2px;
}

img{
	background-size: 30%;
	width: 100%;
}
```
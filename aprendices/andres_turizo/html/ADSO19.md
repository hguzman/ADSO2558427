#### HTML
~~~
<!DOCTYPE html>
<html lang="es-CO">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <title>Bootstrap</title>
    </head>
    <body>
        <main class="container">
            <header class="row">
                <p class="centrar">Bienvenido</p>
            </header>
            <section class="row">
                <article class="col-md-3 col-sm-6">
                    <p>Lorem, ipsum dolor sit amet. Necessitatibus sunt aliquam doloribus itaque, sed quisquam consequuntur ratione odio vero id fugit nobis quaerat. Quam animi quas vitae aspernatur, corporis quae.</p>
                </article>
                <article class="col-md-3 col-sm-6">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.</p>
                </article>
                <article class="col-md-3 col-sm-6">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.</p>
                </article>
                <article class="col-md-3 col-sm-6">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.</p>
                </article>
                <article class="col-md-4 col-sm-12">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.</p>
                </article>
                <article class="col-md-8 col-sm-12">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dol Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.</p>       
            </section>
            <footer class="row">
                <p class="centrar">Contáctenos</p>
            </footer>
        </main>
    </body>
</html>
~~~
#### CSS
~~~
main{
    width: 820px;
    margin: auto;
    color: white;
}
article p{
    margin-right: 20px;
    margin-bottom: 20px;
    background-color: rgb(49, 15, 68);
}
header {
    background-color: rgb(16, 63, 20);
    margin-bottom: 50px;
    margin-top:30px;
    text-align: center;
}
footer {
    margin-top: 50px;
    background-color: rgb(16, 63, 20);
}
.centrar{
    margin-left:50px;
    margin-top:10px
}
~~~

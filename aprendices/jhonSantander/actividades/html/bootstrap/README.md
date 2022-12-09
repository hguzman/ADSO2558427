<h1 align=center>Pagina con Bootstrap - column, row y tipos de pantallas</h1>

<h1 align=center>PC</h1>

<p align=center><img src="https://i.imgur.com/Gmam98B.png"></p>

<h1 align=center>Tablet</h1>

<p align=center><img src="https://i.imgur.com/J9UC08w.png"></p>

<h2 align=center>HTML</h2>

```
<!DOCTYPE html>
<html lang="es-CO">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Pagina con bootstrap</title>
</head>
<body>
    <main class="container">
        <header class="row">
            <h1 class="col-md-12 col-sm-12">hola</p>
        </header>
        <section class="row">
            <article class="col-md-3 col-sm-6">
                <p>
                    Lorem, ipsum dolor sit amet. Necessitatibus sunt aliquam doloribus itaque, sed quisquam consequuntur ratione odio vero id fugit nobis quaerat. Quam animi quas vitae aspernatur, corporis quae.
                </p>
            </article>
            <article class="col-md-3 col-sm-6">
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.
                </p>
            </article>
            <article class="col-md-3 col-sm-6">
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.
                </p>
            </article>
            <article class="col-md-3 col-sm-6">
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.
                </p>
            
        </section>
        <section class="row">
        </article>
        <article class="col-md-5 col-sm-12">
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.
            </p>
        </article>
        <article class="col-md-7 col-sm-12">
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dol Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.

            </p>       
        </section>
        <footer class="row">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus quo harum, maxime corrupti error aperiam, nisi dolorem iusto assumenda illum reprehenderit fugiat eum! Vitae quod eius sed impedit provident quaerat.
        </footer>
    </main>
</body>
</html>
```

<h2 align=center>CSS</h2>

```
header{
    border: 1px solid red;
    padding: 5px;
}

article{
    border: 1px solid blue;
    padding: 18px;
}
footer{
    border: 1px solid purple;
    padding: 18px;
}
```
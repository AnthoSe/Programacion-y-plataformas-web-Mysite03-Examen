<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EnergySUS</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <main>
        <header>
            <h1>
                EnergySUS<img src="icons/nube.png" alt="Icono de Nube" width="32" height="32" />
            </h1>
        </header>
        <nav>
            <a href="#">Inicio</a>
            <a href="#">Sobre Nosotros</a>
            <a href="#">Tipos de Energía</a>
            <a href="#">Noticias</a>
            <a href="#">Contacto</a>
            <a href="login.jsp">Login</a>
        </nav>
        <div class="agrupar">
            <section>
                <h2>Importancia de la Energía Renovable</h2>
                <p>Las fuentes de energía renovable, como la solar, eólica, hidroeléctrica y geotérmica, son sostenibles a
                    largo plazo y generan menos impacto ambiental en comparación con las fuentes de energía no renovable,
                    como los combustibles fósiles. Reducen las emisiones de gases de efecto invernadero y ayudan a mitigar
                    el cambio climático. Las fuentes de energía renovable producen electricidad de manera más limpia y
                    segura.</p>

                <div id="carouselExample" class="carousel slide" style="max-width: 600px; margin: auto;">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="imagenes/foto1.jpg" class="d-block w-100" alt="Imagen 1">
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/foto2.jpg" class="d-block w-100" alt="Imagen 2">
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/foto3.jpg" class="d-block w-100" alt="Imagen 3">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </section>
            <aside>
                <div class="informacion">
                    <h2>Más Información</h2>
                    <p>Descubre nuestras últimas colecciones y tendencias. ¡Te garantizamos estilo y calidad!</p>
                </div>
            </aside>
        </div>
        <section class="icon-section">
            <article class="icon">
                <img src="icons/idea.png" alt="Icono 1" style="width: 48px; height: auto;">
                <h3>La atención al cliente muy cuidada</h3>
                <p>Elegido Servicio de Atención al Cliente del año 2020, 2021 y 2022</p>
            </article>

            <article class="icon">
                <img src="icons/ubi.png" alt="Icono 2" style="width: 48px; height: auto;">
                <h3>Más de 10 millones de clientes en toda Europa</h3>
                <p>Con la confianza de una empresa con experiencia internacional</p>
            </article>

            <article class="icon">
                <img src="icons/hucha.png" alt="Icono 3" style="width: 48px; height: auto;">
                <h3>Sin papeleo y en pocos minutos</h3>
                <p>Nos encargamos de todo para que nunca te quedes sin suministro</p>
            </article>

            <article class="icon">
                <img src="icons/idea.png" alt="Icono 4" style="width: 48px; height: auto;">
                <h3>Electricidad 100% verde para tu hogar</h3>
                <p>Reduce tus emisiones de CO2 y cuida el medio ambiente</p>
            </article>
        </section>
        <footer>
            <ul>
                <li><a href="https://www.facebook.com"><img src="icons/facebook.png" alt="Facebook"></a></li>
                <li><a href="https://www.instagram.com"><img src="icons/instagram.png" alt="Instagram"></a></li>
                <li><a href="https://twitter.com"><img src="icons/twitter.png" alt="Twitter"></a></li>
            </ul>
            <p>&copy; 2023 Energía Renovable</p>
        </footer>
    </main>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias - EnergySUS</title>
    <link rel="stylesheet" href="css/noticias.css">
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
            <a href="index.jsp">Inicio</a>
            <a href="#">Sobre Nosotros</a>
            <a href="blog.jsp">Blog</a>
            <a href="noticias.jsp">Noticias</a>
            <a href="contactenos.jsp">Contáctenos</a>
            <a href="login.jsp">Login</a>
        </nav>
        <div class="agrupar">
            <!-- Contenido -->
            <section class="contenido-section">
                <article class="noticias">
                    <h2>Últimas Noticias</h2>

                    <!-- Noticia 1 -->
                    <div class="noticia">
                        <img src="imagenes/molinos.jpg" alt="Imagen de la noticia" style="width: 200px; height: 200px;">
                        <h3>Ha llegado el momento de blindar la economía europea contra el cambio climático</h3>
                        <p>Para seguir siendo competitiva en el mundo, Europa debe impulsar la transición ecológica.
                            Pero para tener éxito, esta debe ser justa e inclusiva.</p>
                        <a href="#">Leer más</a>
                    </div>

                    <!-- Noticia 2 -->
                    <div class="noticia">
                        <img src="imagenes/vela.jpg" alt="Imagen de la noticia" style="width: 200px; height: 200px;">
                        <h3>Horarios de cortes de luz en Guayaquil para este martes, 28 de noviembre</h3>
                        <p>Estos cortes de energía se dividen en cinco franjas horarias de 10:00 a 18:00.</p>
                        <a href="#">Leer más</a>
                    </div>

                    <!-- Noticia 3 -->
                    <div class="noticia">
                        <img src="imagenes/cortesLuz.jpg" alt="Imagen de la noticia" style="width: 200px; height: 200px;">
                        <h3>Desde el 2016 disminuyó la producción de energía que proviene de la luz solar, del viento y de los desechos orgánicos</h3>
                        <p>Hace 6 años, las fuentes eólica, fotovoltaica, biomasa y biogás representaron el 4,5 % de la generación eléctrica del país 
                        con 1.057 GWh, 731 más que en 2022.</p>
                        <a href="#">Leer más</a>
                    </div>

                </article>
            </section>
        </div>
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

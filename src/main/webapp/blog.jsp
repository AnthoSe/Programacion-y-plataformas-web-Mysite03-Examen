<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EnergySUS</title>
    <link rel="stylesheet" href="css/blog.css">
</head>
<body>
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

    <section class="main-content">
        <article>
            <img src="imagen1.jpg" alt="Imagen 1">
            <h2>Entrada del Blog 1</h2>
            <p>Descripción corta de la entrada del blog. Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
            <a href="#">Leer más</a>
        </article>

        <article>
            <img src="imagen2.jpg" alt="Imagen 2">
            <h2>Entrada del Blog 2</h2>
            <p>Descripción corta de la entrada del blog. Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
            <a href="#">Leer más</a>
        </article>

        <!-- Agrega más artículos según sea necesario -->
    </section>

    <aside>
        <div class="widget">
            <h2>Sobre mí</h2>
            <p>Breve descripción sobre el autor del blog. Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
        </div>

        <div class="widget">
            <h2>Categorías</h2>
            <ul>
                <li><a href="#">Categoría 1</a></li>
                <li><a href="#">Categoría 2</a></li>
                <!-- Agrega más categorías según sea necesario -->
            </ul>
        </div>

        <!-- Agrega más widgets según sea necesario -->
    </aside>

     <footer>
            <ul>
                <li><a href="https://www.facebook.com"><img src="icons/facebook.png" alt="Facebook"></a></li>
                <li><a href="https://www.instagram.com"><img src="icons/instagram.png" alt="Instagram"></a></li>
                <li><a href="https://twitter.com"><img src="icons/twitter.png" alt="Twitter"></a></li>
            </ul>
            <p>&copy; 2023 Energía Renovable</p>
        </footer>
</body>
</html>

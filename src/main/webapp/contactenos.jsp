<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactenos - EnergySUS</title>
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
            <h1>EnergySUS<img src="icons/nube.png" alt="Icono de Nube" width="32" height="32" /></h1>
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
            <section class="contenido-section">
                <article class="texto">
                    <h2>¿En qué podemos ayudarte?</h2>
                    <p>En EnergySUS las personas están en el centro. Te escuchamos: Tú eliges cómo prefieres contactar con nosotros.</p>
                </article>
                <aside class="imagen-section">
                    <img src="imagenes/aside.jpg" alt="Imagen de Contacto" width="600" height="300">
                </aside>
            </section>
            <section class="icon-section">
                <article class="icon">
                    <img src="icons/movil.png" alt="Icono Teléfono">
                    <h3>Teléfono de Atención al Cliente</h3>
                    <p>¡Llámanos para recibir asistencia!</p>
                    <p>900264833</p>
                </article>
                <article class="icon">
                    <img src="icons/movil.png" alt="Icono Contrataciones">
                    <h3>Nuevas Contrataciones</h3>
                    <p>Descubre oportunidades de empleo.</p>
                     <p>900264833</p>
                </article>
                <article class="icon">
                    <img src="icons/correo.png" alt="Icono Email">
                    <h3>Email de Atención al Cliente</h3>
                    <p>Envíanos un correo electrónico.</p>
                     <p>clientes@systemSUS.es</p>
                </article>
            </section>
            <section class="contact-form">
                <h2>O si lo prefieres, déjanos tus datos</h2>
                <form action="procesar_contacto.jsp" method="post">
                    <input type="text" id="nombres" name="nombres" placeholder="Nombres" required>
                    <input type="text" id="apellidos" name="apellidos" placeholder="Apellidos" required>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                    <input type="tel" id="telefono" name="telefono" placeholder="Teléfono" required>
                    <button type="submit">Te llamamos</button>
                </form>
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

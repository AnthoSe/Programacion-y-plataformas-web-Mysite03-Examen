<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.productos.seguridad.Foro" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>

<%
    // Obtener el mensaje del formulario
    String mensaje = request.getParameter("mensaje");

    if (mensaje != null && !mensaje.isEmpty()) {
        // Obtener el nombre del usuario (puedes obtenerlo de la sesión o de donde lo tengas almacenado)
        String autor = "NombreUsuario"; // Reemplaza esto con el método que obtenga el nombre del usuario

        // Crear un objeto Foro con los datos del formulario
        Foro nuevoMensaje = new Foro();
        nuevoMensaje.setMensaje(mensaje);
        nuevoMensaje.setAutor(autor);

        // Publicar el mensaje en el foro
        boolean publicacionExitosa = Foro.publicarMensaje(nuevoMensaje);

        if (publicacionExitosa) {
            response.sendRedirect("foro.jsp");
        } else {
            String errorMessage = "Error al publicar el mensaje";
            String encodedMessage = URLEncoder.encode(errorMessage, StandardCharsets.UTF_8.toString());
            response.sendRedirect("foro.jsp?mensaje=" + encodedMessage);
        }
    }

    // Obtener la lista de mensajes
    List<Foro> mensajes = Foro.obtenerMensajes();
%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foro de Discusión - EnergySUS</title>
    <link rel="stylesheet" href="css/foro.css">
</head>

<body>
    <main>
        <header>
            <h1>EnergySUS - Foro de Discusión</h1>
        </header>
        <nav>
            <!-- Incluye aquí tu menú de navegación existente -->
            <a href="index.jsp">Inicio</a>
            <a href="#">Sobre Nosotros</a>
            <a href="foro.jsp">Blog</a>
            <a href="noticias.jsp">Noticias</a>
            <a href="contactenos.jsp">Contáctenos</a>
            <div class="perfil-options">
                <!-- Puedes mantener tu icono de perfil y menú de opciones aquí -->
                <img src="icons/perfil.png" alt="Icono de Perfil" width="32" height="32">
                <div class="options" id="optionsMenu">
                    <a href="#">Configuración</a>
                    <a href="cerrarSesion.jsp">Cerrar Sesión</a>
                </div>
            </div>
        </nav>
        <section id="messages">
            <h2>Mensajes en el Foro</h2>
            <ul>
                <c:forEach var="mensaje" items="${mensajes}">
                    <li>
                        <p>${mensaje.autor} dice:</p>
                        <p>${mensaje.mensaje}</p>
                        <p>Publicado el: ${mensaje.fechaPublicacion}</p>
                    </li>
                </c:forEach>
            </ul>
        </section>
        <section id="post-message">
            <h2>Publicar Nuevo Mensaje</h2>
            <form action="" method="post">
                <label for="mensaje">Mensaje:</label>
                <textarea id="mensaje" name="mensaje" required></textarea>
                <button type="submit">Publicar Mensaje</button>
            </form>
            
            <c:if test="${not empty param.mensaje}">
                <p>${param.mensaje}</p>
            </c:if>
        </section>
        <footer>
            <!-- Incluye aquí tu pie de página existente -->
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
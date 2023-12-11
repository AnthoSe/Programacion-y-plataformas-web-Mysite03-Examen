<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*, java.io.*, java.util.*" %>
<%
    String usuario;
    HttpSession sesion = request.getSession();

    if (sesion.getAttribute("usuario") == null) {
        // Si no hay sesión, redirige a login.jsp con un mensaje de error
%>
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Debe registrarse en el sistema."/>
</jsp:forward>
<%
    } else {
        usuario = (String) sesion.getAttribute("usuario");
        int perfil = (Integer) sesion.getAttribute("perfil");
%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tus Artículos - EnergySUS</title>
    <link rel="stylesheet" href="css/menu.css"> <!-- Cambia el nombre del archivo CSS si es necesario -->
</head>

<body>
    <main>
        <header>
            <h1>EnergySUS<img src="icons/nube.png" alt="Icono de Nube" width="32" height="32" /></h1>
        </header>
        <nav>
            <a href="index.jsp">Inicio</a>
            <a href="#">Sobre Nosotros</a>
            <a href="foro.jsp">Blog</a>
            <a href="noticias.jsp">Noticias</a>
            <a href="contactenos.jsp">Contáctenos</a>
            
            <div class="perfil-options">
                <img src="icons/perfil.png" alt="Icono de Perfil" width="32" height="32">
                <div class="options" id="optionsMenu">
                    <a href="#">Configuración</a>
                    <a href="cerrarSesion.jsp">Cerrar Sesión</a>
                </div>
            </div>
        </nav>
        <div class="agrupar">
            <section class="articulos-section">
                <article class="articulo">
                    <h2>Luz</h2>
                    <p>Energía</p>
                    <p>Consumo a precio de coste | 0,160 €/kWh | Precio medio octubre 2023</p>
                    <p>Potencia | Periodo Punta 0,069 €/kWh/día | Periodo Valle 0,004 €/kWh/día</p>
                    <p>Cuota mensual | 1,50 €/mes | Durante 12 meses</p>
                </article>
                <article class="articulo">
                    <h2>[Servicio Similar]</h2>
                    <p>[Detalles del Servicio]</p>
                </article>
            </section>
            <div class="botones-section">
                <button class="llamamos-btn">Te llamamos</button>
                <button class="quiero-btn">Lo quiero</button>
            </div>
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
<%
    }
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - EnergySUS</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <header>
        <h1>
            EnergySUS<img src="icons/nube.png" alt="Icono de nube" width="32" height="32" />
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

     <section class="login-section">
        <div class="login-box">
            <h2>Login</h2>
            <form action="verificarLogin.jsp" method="post"> <!-- Cambiado a verificarLogin.jsp -->
                <div class="user-box">
                    <input type="text" name="email" required="">
                    <label>Email</label>
                </div>
                <div class="user-box">
                    <input type="password" name="password" required="">
                    <label>Password</label>
                </div>
                <input type="submit" value="Sign In">
                
                <div class="links">
                    <a href="#">Olvidaste tu contraseña?</a>
                    <%-- Muestra el mensaje de error si existe --%>
                    <p style="color: red;">
                        <%= request.getParameter("error") %>
                    </p>
                    <p>No tienes una cuenta? <a href="registro.jsp">Regístrate aquí</a></p>
                </div>
            </form>
        </div>
    </section>

    <footer class="footer">
        <ul>
            <li><a href="https://www.facebook.com"><img src="icons/facebook.png" alt="Facebook"></a></li>
            <li><a href="https://www.instagram.com"><img src="icons/instagram.png" alt="Instagram"></a></li>
            <li><a href="https://twitter.com"><img src="icons/twitter.png" alt="Twitter"></a></li>
        </ul>
        <p>&copy; 2023 Energía Renovable</p>
    </footer>
</body>
</html>

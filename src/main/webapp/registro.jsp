<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>EnergySUS</title>
    <link href="css/registro.css" rel="stylesheet" type="text/css">
</head>
<body>
    <main>
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
        <section class="formulario">
            <h2>Datos Personales</h2>
            <form action="respuesta.jsp" method="post">
                <label for="nombre">Nombre:</label>
                <input type="text" name="txtnombre" required><br><br>

                <label for="cedula">Número de Cédula:</label>
                <input type="text" name="cedula" maxlength="10" required><br><br>

                <label for="cmbECivil">Estado Civil:</label>
                <select name="cmbECivil">
                    <option value="1">Soltero</option>
                    <option value="2">Casado</option>
                    <option value="3">Divorciado</option>
                    <option value="4">Viudo</option>
                </select><br><br>

                <label for="correo">Correo Electrónico:</label>
                <input type="email" name="correo" required><br><br>

                <label for="clave">Clave:</label>
                <input type="password" name="clave" minlength="6" required><br><br>

                <button type="submit">Registrar Producto</button>
                <button type="reset">Limpiar</button>
            </form>
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



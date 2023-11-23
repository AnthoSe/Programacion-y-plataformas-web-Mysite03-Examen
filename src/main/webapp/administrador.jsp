<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administrador</title>
    <link rel="stylesheet" href="css/admin.css">
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
        <a href="#">Tipos de Energía</a>
        <a href="#">Noticias</a>
        <a href="#">Contacto</a>
        <a href="admin">Administrar</a>
    </nav>

    <section class="admin-section">
        <h2>Panel de Administrador</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <!-- Aquí irá la lógica para mostrar y gestionar la información de los usuarios -->
                <!-- Por ejemplo, puedes usar JSTL para iterar sobre una lista de usuarios -->
                <!-- La lista de usuarios puede venir de tu controlador/servicio -->
                <c:forEach var="user" items="${listaUsuarios}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.nombre}</td>
                        <td>${user.email}</td>
                        <td>
                            <!-- Aquí puedes agregar más elementos o acciones según tus necesidades -->
                            <form action="bloquearUsuario" method="post">
                                <input type="hidden" name="userId" value="${user.id}">
                                <input type="submit" value="Bloquear">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
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

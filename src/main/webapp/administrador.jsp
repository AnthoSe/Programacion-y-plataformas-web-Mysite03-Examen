<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.productos.seguridad.*" %>
<%@ page import="com.productos.datos.*" %>
<%@ page import="java.util.List" %>

<link rel="icon" href="data:,">

<%
    // Crea una instancia de UsuarioDAO y obtén la lista de usuarios
    Conexion conexion = new Conexion(); // Asegúrate de que la clase Conexion tenga el método crearConexion()
    UsuarioDAO usuarioDAO = new UsuarioDAO(conexion);
    List<Usuario> listaUsuarios = usuarioDAO.obtenerUsuarios();
%>
<% 
    System.out.println("Cantidad de usuarios: " + listaUsuarios.size());
%>

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
                <c:forEach var="user" items="${listaUsuarios}">
                    <tr>
                        <td>${user.id_per}</td>
                        <td>${user.nombre}</td>
                        <td>${user.correo}</td>
                        <td>
                            <form action="bloquearUsuario" method="post">
                                <input type="hidden" name="userId" value="${user.id_per}">
                                <input type="submit" value="Bloquear/Desbloquear">
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

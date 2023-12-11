<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*, java.sql.*" %>
<%
    String correo = request.getParameter("email");
    String clave = request.getParameter("password");
    Usuario usuario = new Usuario();

    boolean respuesta = usuario.verificarInicioSesion(correo, clave);

    if (respuesta) {
        // Sesión exitosa
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", usuario.getNombre());
        sesion.setAttribute("perfil", usuario.getId_per());

        // Redirige a diferentes páginas según el tipo de usuario
        if (usuario.getId_per() == 1) {
            // Usuario administrador
            response.sendRedirect("administrador.jsp");
        } else {
            // Otro tipo de usuario
            response.sendRedirect("menu.jsp");
        }
    } else {
        // Sesión fallida
        response.sendRedirect("login.jsp?error=Datos incorrectos. Vuelva a intentarlo.");
    }
%>

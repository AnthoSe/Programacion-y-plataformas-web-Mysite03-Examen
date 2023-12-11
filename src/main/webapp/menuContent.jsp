<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="perfil" value="${sessionScope.perfil}" />

<%
Pagina pag = new Pagina();
String menu = pag.mostrarMenu(perfil);
out.print(menu);
%>

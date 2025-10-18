<%--
  Created by IntelliJ IDEA.
  User: gabri
  Date: 18/10/2025
  Time: 00:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="navbar">
    <div class="nav-left">
        <img src="<%= request.getContextPath() %>/img/fedesports.png" alt="Logo FedeSports" class="logo">
        <span class="titulo">FedeSports</span>
    </div>

    <nav class="nav-center">
        <a href="<%= request.getContextPath() %>/menu-principal.jsp">Inicio</a>
        <a href="#">Federaciones</a>
        <a href="#">Equipos</a>
        <a href="<%= request.getContextPath() %>/registro-jugador.jsp">Jugadores</a>
        <a href="<%= request.getContextPath() %>/reportes.jsp">Reportes</a>
    </nav>

    <div class="nav-right">
        <img src="<%= request.getContextPath() %>/img/Logo.png" alt="Usuario" class="usuario">
        <span>Amanda Smith</span>
    </div>
</header>
<style>
    /*  NAVBAR */
    .navbar {
        background-color: #0c2d57;
        color: white;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 40px;
        position: fixed;      /* esto lo deja fijo */
        top: 0;
        left: 0;
        width: 100%;
        z-index: 1000;        /* se mantiene por encima del resto */
        box-shadow: 0 2px 6px rgba(0,0,0,0.3);
    }

    body {
        margin: 0;
    }

    .nav-left {
        display: flex;
        align-items: center;
        gap: 5px;
    }

    .nav-left .logo {
        height: 45px;
    }

    .nav-center a {
        color: white;
        text-decoration: none;
        margin: 0 15px;
        font-weight: 500;
        transition: color 0.3s;
    }

    .nav-center a:hover {
        color: #00aaff;
    }

    .nav-right {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .nav-right .usuario {
        height: 35px;
        border-radius: 50%;
    }

</style>
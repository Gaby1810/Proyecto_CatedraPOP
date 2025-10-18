<%--
  Created by IntelliJ IDEA.
  User: gabri
  Date: 17/10/2025
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Jugador - FedeSports</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
        }

        /* Encabezado */
        header {
            background-color: #0c2d57;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 40px;
        }

        header .logo {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        header .logo img {
            height: 45px;
        }

        header nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: 500;
        }

        header nav a:hover {
            text-decoration: underline;
        }

        .usuario {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .usuario img {
            height: 35px;
            border-radius: 50%;
        }

        /* Fondo con estadio */
        .banner {
            background: url('img/futbol.jpg') no-repeat center;
            background-size: cover;
            height: 250px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 32px;
            font-weight: bold;
        }

        /* Formulario */
        .form-container {
            background-color: white;
            width: 400px;
            margin: -80px auto 40px auto;
            padding: 25px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-top: 5px;
        }

        .genero {
            display: flex;
            gap: 15px;
            margin-top: 5px;
        }

        .botones {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-limpiar {
            background-color: #647d42;
            color: white;
        }

        .btn-guardar {
            background-color: #1a472a;
            color: white;
        }

        .btn-limpiar:hover, .btn-guardar:hover {
            opacity: 0.9;
        }
        /* Navegación inferior */
        .nav-inferior {
            display: flex;
            justify-content: space-between;
            padding: 20px 100px;
        }

        .nav-inferior button {
            background-color: #0c2d57;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .nav-inferior button:hover {
            background-color: #123d78;
        }

    </style>
</head>
<body>
<jsp:include page="/jsp/nav.jsp" />

<div class="banner">
    Registro de Jugador
</div>

<div class="form-container">
    <form>
        <label>ID Jugador*</label>
        <input type="text" placeholder="Ingrese ID del jugador">

        <label>Nombre*</label>
        <input type="text" placeholder="Ingrese el nombre completo">

        <label>Fecha de nacimiento*</label>
        <input type="date">

        <label>Género*</label>
        <div class="genero">
            <label><input type="radio" name="genero"> Masculino</label>
            <label><input type="radio" name="genero"> Femenino</label>
        </div>

        <label>Equipo*</label>
        <select>
            <option value="">Seleccione un equipo</option>
            <option>Real Madrid</option>
            <option>FC Barcelona</option>
            <option>Atlético de Madrid</option>
        </select>

        <div class="botones">
            <button type="reset" class="btn btn-limpiar">Limpiar</button>
            <button type="submit" class="btn btn-guardar">Guardar</button>
        </div>
    </form>
</div>

<div class="nav-inferior">
    <form action="menu-principal.jsp">
        <button type="submit">Volver al Menú Principal</button>
    </form>
    <button>Siguiente →</button>
</div>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registrar un Equipo - FedeSports</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
        }

        /* Encabezado fijo (importado con JSP include) */
        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
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
            margin-top: 65px; /* para que no se oculte bajo el navbar */
        }

        /* Formulario */
        .form-container {
            background-color: white;
            width: 450px;
            margin: -70px auto 40px auto;
            padding: 25px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        .form-container h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #0c2d57;
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
    Registrar un Equipo
</div>

<div class="form-container">
    <h3>Datos del equipo</h3>
    <form>
        <label>ID Equipo*</label>
        <input type="text" placeholder="Ingrese el ID único del equipo" required>

        <label>Nombre*</label>
        <input type="text" placeholder="Ingrese el nombre del equipo" required>

        <label>Federación*</label>
        <select required>
            <option value="">Seleccione una federación</option>
            <option value="1">Federación Central</option>
            <option value="2">Federación Norte</option>
            <option value="3">Federación Sur</option>
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

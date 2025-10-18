<%--
  Created by IntelliJ IDEA.
  User: gabri
  Date: 17/10/2025
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registrar Nueva Federación - FedeSports</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {

            background-size: cover;
            font-family: 'Segoe UI', sans-serif;
        }

        .navbar {
            background-color: #0b3d91;
        }

        .navbar-brand, .nav-link, .navbar-text {
            color: #fff !important;
        }

        .card-form {
            background-color: rgba(255, 255, 255, 0.97);
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            padding: 40px;
            margin-top: 40px;
        }

        h3 {
            color: #1b5e20;
            font-weight: bold;
            text-align: center;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #444;
            font-size: 15px;
            margin-bottom: 30px;
        }

        .form-label {
            font-weight: 600;
        }

        .btn-success {
            background-color: #2e7d32;
            border: none;
        }

        .btn-success:hover {
            background-color: #1b5e20;
        }

        .btn-outline-danger:hover {
            background-color: #c62828;
            color: #fff;
        }

        .bottom-buttons {
            margin-top: 30px;
            display: flex;
            justify-content: space-between;
        }

        .footer-btn {
            background-color: #0b3d91;
            color: white;
            border: none;
        }

        .footer-btn:hover {
            background-color: #083b8a;
        }

    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="#">FedeSports</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link active" href="federation_register.jsp">Federaciones</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Equipos</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Jugadores</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Reportes</a></li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <img src="assets/avatar.png" width="30" class="rounded-circle"> Amanda Smith
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="card-form">
        <h3>Registrar Nueva Federación</h3>
        <p class="subtitle">Complete los campos a continuación para registrar una nueva federación de fútbol en el sistema.</p>

        <form action="federation" method="post">
            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label">ID Federación*</label>
                    <input type="text" name="federationCode" class="form-control" placeholder="Ej: FED001" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Nombre de la Federación*</label>
                    <input type="text" name="name" class="form-control" placeholder="Ej: Federación Española de Fútbol" required>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label">Fecha de Fundación*</label>
                    <input type="date" name="foundationDate" class="form-control" required>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Departamento*</label>
                    <select name="department" class="form-select" required>
                        <option value="">Seleccione un departamento</option>
                        <option>San Salvador</option>
                        <option>Santa Ana</option>
                        <option>La Libertad</option>
                        <option>Usulután</option>
                        <option>San Miguel</option>
                        <option>Sonsonate</option>
                        <option>La Paz</option>
                        <option>Morazán</option>
                        <option>Chalatenango</option>
                        <option>Ahuachapán</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Municipio*</label>
                    <input type="text" name="municipality" class="form-control" placeholder="Ej: San Salvador" required>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Dirección*</label>
                <input type="text" name="address" class="form-control" placeholder="Ej: Colonia Escalón, Calle San Antonio Abad" required>
            </div>

            <div class="d-flex justify-content-end mt-4">
                <button type="reset" class="btn btn-outline-danger me-2">Cancelar</button>
                <button type="submit" class="btn btn-success">Guardar</button>
            </div>
        </form>

        <div class="bottom-buttons">
            <form action="dashboard.jsp" method="get">
                <button type="submit" class="btn footer-btn">Volver al Menú Principal</button>
            </form>

            <form action="nextStep.jsp" method="get">
                <button type="submit" class="btn footer-btn">Siguiente →</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
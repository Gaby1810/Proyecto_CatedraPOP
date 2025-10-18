<%--
  Created by IntelliJ IDEA.
  User: gabri
  Date: 17/10/2025
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>FedeSports - Iniciar Sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f0f2f5; }
        .navbar { background-color: #0c2d57; }
        .navbar-brand, .nav-link, .navbar-text { color: #fff !important; }
        .left-section {
            background: linear-gradient(180deg, #083b8a 0%, #0a58ca 100%);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 50px;
        }
        .form-section {
            background-color: white;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        .profile-icon {
            width: 80px;
            height: 80px;
            background-color: #0b3d91;
            border-radius: 50%;
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 40px;
        }
        .btn-primary {
            background-color: #0b3d91;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0a58ca;
        }
    </style>
</head>
<body>
<jsp:include page="/jsp/nav.jsp" />

<div class="container-fluid min-vh-100 d-flex align-items-center">
    <div class="row w-100">
        <div class="col-md-6 left-section">
            <div class="text-center">
                <img src="assets/logo.png" alt="Logo FedeSports" width="150" class="mb-4">
                <h2 class="fw-bold">FedeSports</h2>
                <p>FedeSports es una aplicación diseñada para la gestión y organización de equipos deportivos dentro de una federación</p>
            </div>
        </div>

        <div class="col-md-6 d-flex align-items-center justify-content-center">
            <div class="form-section w-75">
                <div class="profile-icon">
                    <i class="bi bi-person"></i>
                </div>
                <form action="login" method="post">
                    <div class="mb-3">
                        <label>Username</label>
                        <input type="text" name="username" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label>Contraseña</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    <button class="btn btn-primary w-100" type="submit">Iniciar Sesión</button>
                    <p class="mt-3 text-center">¿No tienes cuenta? <a href="Registro.jsp">Crear una cuenta</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

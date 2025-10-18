<%--
  Created by IntelliJ IDEA.
  User: gabri
  Date: 18/10/2025
  Time: 00:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Reportes del Sistema - FedeSports</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/estilos.css">
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f3f4f6;
      margin: 0;
      padding: 0;
    }

    main {
      padding: 40px 80px;
      text-align: center;
    }

    h1 {
      color: #0c2d57;
      font-size: 32px;
      margin-bottom: 10px;
    }

    p {
      color: #555;
      margin-bottom: 40px;
    }

    .card {
      background-color: #0c2d57;
      border-radius: 12px;
      padding: 25px;
      color: white;
      margin-bottom: 40px;
      box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
    }

    .card h2 {
      margin-bottom: 15px;
      font-size: 20px;
      text-align: left;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background-color: white;
      color: black;
      border-radius: 10px;
      overflow: hidden;
    }

    th, td {
      padding: 10px 15px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #f2f2f2;
      font-weight: bold;
    }

    tr:hover {
      background-color: #f9f9f9;
    }

    .icons {
      float: right;
      margin-top: -30px;
    }

    .icons img {
      width: 20px;
      margin-left: 10px;
      cursor: pointer;
    }

  </style>
</head>
<body>

<!-- Menú reutilizable -->
<jsp:include page="/jsp/nav.jsp" />

<main>
  <h1>Reportes del Sistema</h1>
  <p>Visualiza y gestiona información detallada sobre federaciones, equipos y jugadores.
    Genera, exporta y filtra tus reportes con facilidad.</p>

  <!-- Reporte de Federaciones -->
  <section class="card">
    <h2>Reporte de Federaciones Registradas</h2>
    <div class="icons">
      <img src="<%= request.getContextPath() %>/img/buscar.png" alt="Buscar">
      <img src="<%= request.getContextPath() %>/img/filtrar.png" alt="Filtrar">
    </div>
    <table>
      <thead>
      <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Fecha de Fundación</th>
        <th>Equipos Registrados</th>
      </tr>
      </thead>
      <tbody>
      <tr><td>FED001</td><td>Federación Española de Fútbol</td><td>1909-10-14</td><td>120</td></tr>
      <tr><td>FED002</td><td>Federación Argentina de Fútbol</td><td>1893-02-21</td><td>150</td></tr>
      <tr><td>FED003</td><td>Federación Brasileña de Fútbol</td><td>1914-06-08</td><td>180</td></tr>
      <tr><td>FED004</td><td>Federación Francesa de Fútbol</td><td>1919-04-07</td><td>100</td></tr>
      <tr><td>FED005</td><td>Federación Alemana de Fútbol</td><td>1900-01-28</td><td>130</td></tr>
      </tbody>
    </table>
  </section>

  <!-- Reporte de Equipos -->
  <section class="card">
    <h2>Reporte de Equipos por Federación</h2>
    <div class="icons">
      <img src="<%= request.getContextPath() %>/img/buscar.png" alt="Buscar">
      <img src="<%= request.getContextPath() %>/img/filtrar.png" alt="Filtrar">
    </div>
    <table>
      <thead>
      <tr>
        <th>ID</th>
        <th>Nombre del Equipo</th>
        <th>Federación</th>
        <th>Jugadores Registrados</th>
      </tr>
      </thead>
      <tbody>
      <tr><td>EQP001</td><td>Real Madrid</td><td>Federación Española de Fútbol</td><td>25</td></tr>
      <tr><td>EQP002</td><td>FC Barcelona</td><td>Federación Española de Fútbol</td><td>28</td></tr>
      <tr><td>EQP003</td><td>Boca Juniors</td><td>Federación Argentina de Fútbol</td><td>22</td></tr>
      <tr><td>EQP004</td><td>River Plate</td><td>Federación Argentina de Fútbol</td><td>26</td></tr>
      </tbody>
    </table>
  </section>
</main>

</body>
</html>

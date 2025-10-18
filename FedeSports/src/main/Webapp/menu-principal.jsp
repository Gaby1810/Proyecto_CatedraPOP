<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Menú Principal - FedeSports</title>
    <style>
        body {
            font-family: "Segoe UI", sans-serif;
            background-color: #f8f9fc;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #0b2d61;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 40px;
        }
        header img {
            height: 40px;
        }
        .usuario {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .usuario img {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            border: 2px solid white;
        }
        main {
            padding: 40px;
            text-align: center;
        }
        .bienvenida {
            background-color: #eaf5ee;
            padding: 30px;
            border-radius: 15px;
            max-width: 800px;
            margin: 0 auto 40px;
        }
        .bienvenida h2 {
            color: #0b2d61;
        }
        .acciones {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 25px;
        }
        .tarjeta {
            background: white;
            border-radius: 12px;
            box-shadow: 0 3px 8px rgba(0,0,0,0.1);
            width: 200px;
            padding: 20px;
            transition: transform 0.2s;
        }
        .tarjeta:hover {
            transform: scale(1.05);
        }
        .tarjeta button {
            background-color: #fafafa;
            color: Black;
            border-bottom: Black 2px solid;
            padding: 10px 15px;
            border-radius: 8px;
            cursor: pointer;
        }
        .tarjeta button:hover {
            background-color: #153e8a;
        }
        /* 🔹 Sección bienvenida */
        .bienvenida {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 40px auto;
            width: 85%;
            background-color: #f2f8f2;
            border-radius: 12px;
            padding: 25px;
        }
        .texto-bienvenida h2 {
            color: #003366;
            width: 60%;
        }

        .imagen-bienvenida img {
            width: 250px;
            height: auto;
        }




    </style>
</head>
<body>
<jsp:include page="/jsp/nav.jsp" />
<main>
    <section class="bienvenida">
        <div class="texto-bienvenida">
            <h2>Bienvenido al Sistema de Federaciones de Fútbol</h2>
            <p>Gestiona federaciones, equipos y jugadores de forma eficiente y centralizada.
                Accede a informes detallados y mantén tus datos siempre actualizados.</p>
        </div>
        <div class="imagen-bienvenida">
            <img src="img/estadio.png" alt="Estadio">
        </div>
    </section>

    <h3>Acciones Rápidas</h3>
    <div class="acciones">
        <div class="tarjeta">
            <img src="img/federacion.png" alt="Icono Federación">
            <h4>Registrar Federación</h4>
            <p>Añade nuevas federaciones con todos sus detalles administrativos.</p>
            <button>Registrar Federación</button>
        </div>
        <div class="tarjeta">
            <img src="img/equipo.png" alt="Icono Equipo">
            <h4>Registrar Equipo</h4>
            <p>Crea y asocia equipos a sus respectivas federaciones.</p>
            <button>Registrar Equipo</button>
        </div>
        <div class="tarjeta">
            <img src="img/jugador.png" alt="Icono Jugador">
            <h4>Registrar Jugador</h4>
            <p>Registra jugadores con su información personal y asignación.</p>
            <a href="registro-jugador.jsp"><button>Registrar Jugador</button></a>
        </div>
        <div class="tarjeta">
            <img src="img/reportes.png" alt="Icono Reporte">
            <h4>Ver Reportes</h4>
            <p>Consulta informes detallados de federaciones, equipos y jugadores.</p>
            <a href="reportes.jsp"><button>Ver Reportes</button></a>
        </div>
    </div>
</main>

</body>
</html>


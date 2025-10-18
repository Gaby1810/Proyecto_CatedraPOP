<%--
  Created by IntelliJ IDEA.
  User: gabri
  Date: 17/10/2025
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Iniciar Sesión - FedeSports</title>
</head>
<body>
<h2>Iniciar Sesión</h2>
<form action="login" method="post">
    <label>Usuario:</label>
    <input type="text" name="usuario" required><br>
    <label>Contraseña:</label>
    <input type="password" name="clave" required><br>
    <input type="submit" value="Ingresar">
</form>
<c:if test="${not empty error}">
    <p style="color:red">${error}</p>
</c:if>
</body>
</html>

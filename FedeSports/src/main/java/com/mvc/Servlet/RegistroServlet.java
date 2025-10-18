package com.mvc.Servlet;

import com.mvc.Util.ConexionDB;
import com.mvc.Javabeans.Registro;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");

        Registro registro = new Registro(nombre, correo, usuario, contrasena);

        try (Connection con = ConexionDB.getConnection()) {
            String sql = "INSERT INTO usuarios (nombre, correo, usuario, contrasena) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, registro.getNombre());
            ps.setString(2, registro.getCorreo());
            ps.setString(3, registro.getUsuario());
            ps.setString(4, registro.getContrasena());
            ps.executeUpdate();

            request.setAttribute("mensaje", "✅ Registro exitoso. ¡Ahora puedes iniciar sesión!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("mensaje", "❌ Error al registrar el usuario: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("registro.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("registro.jsp");
    }
}
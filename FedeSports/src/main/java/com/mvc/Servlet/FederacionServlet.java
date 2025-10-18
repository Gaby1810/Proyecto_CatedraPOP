package com.mvc.Servlet;
import com.mvc.Javabeans.Federacion;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/federacion")
public class FederacionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Muestra el formulario principal
        request.getRequestDispatcher("federacion.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener datos del formulario
        String nombre = request.getParameter("nombre");
        String pais = request.getParameter("pais");
        String presidente = request.getParameter("presidente");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");

        // Crear objeto Federacion
        Federacion federacion = new Federacion();
        federacion.setNombre(nombre);
        federacion.setPais(pais);
        federacion.setPresidente(presidente);
        federacion.setTelefono(telefono);
        federacion.setCorreo(correo);

        // Mandar los datos al JSP de confirmación
        request.setAttribute("federacion", federacion);
        request.getRequestDispatcher("federacion_confirmacion.jsp").forward(request, response);
    }
}

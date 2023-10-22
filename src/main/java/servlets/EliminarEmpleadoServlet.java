package servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;

import controllers.EmpleadoController;

import java.io.IOException;

@WebServlet("/EliminarEmpleadoServlet")
public class EliminarEmpleadoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idEmpleadoDelete = Integer.parseInt(request.getParameter("idEmpleadoDelete"));

        EmpleadoController empleadoController = new EmpleadoController();
        String resultado = empleadoController.deleteEmpleado(idEmpleadoDelete);

        response.getWriter().write(resultado);
    }
}

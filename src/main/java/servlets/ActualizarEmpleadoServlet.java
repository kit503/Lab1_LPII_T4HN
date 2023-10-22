package servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;

import controllers.EmpleadoController;

import java.io.IOException;

@WebServlet("/ActualizarEmpleadoServlet")
public class ActualizarEmpleadoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idEmpleado = Integer.parseInt(request.getParameter("idEmpleadoUpdate"));
        String nuevosApellidos = request.getParameter("nuevosApellidos");

        EmpleadoController empleadoController = new EmpleadoController();
        String resultado = empleadoController.updateEmpleado(idEmpleado, nuevosApellidos);

        response.getWriter().write(resultado);
    }
}

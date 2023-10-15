package servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;

import controllers.EmpleadoController;

import java.io.IOException;

@WebServlet("/CrearEmpleado")
public class EmpleadoServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String apellidos = request.getParameter("apellidos");
        String nombres = request.getParameter("nombres");
        int edad = Integer.parseInt(request.getParameter("edad"));
        String sexo = request.getParameter("sexo");
        double salario = Double.parseDouble(request.getParameter("salario"));

        EmpleadoController empleadoController = new EmpleadoController();
        String resultado = empleadoController.createEmpleado(apellidos, nombres, edad, sexo, salario);

        response.getWriter().write(resultado);
    }
}


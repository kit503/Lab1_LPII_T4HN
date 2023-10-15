package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.EmpleadoController;

@WebServlet("/LeerEmpleado")
public class LeerEmpleadoServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idEmpleado = Integer.parseInt(request.getParameter("idEmpleado"));

        EmpleadoController empleadoController = new EmpleadoController();
        String resultado = empleadoController.getEmpleado(idEmpleado);

        response.getWriter().write(resultado);
    }
}

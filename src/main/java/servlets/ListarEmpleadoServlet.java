package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.EmpleadoController;
import models.Empleado;

@WebServlet("/ListarEmpleadoServlet")
public class ListarEmpleadoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EmpleadoController empleadoController = new EmpleadoController();
        List<Empleado> empleados = empleadoController.listarEmpleados();

        request.setAttribute("empleados", empleados);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}

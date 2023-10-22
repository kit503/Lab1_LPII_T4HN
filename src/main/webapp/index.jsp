<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario CRUD de Empleado</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        h2 {
            background-color: #0074e4;
            color: #fff;
            padding: 10px;
        }

        form {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin: 10px auto;
            max-width: 400px;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #0074e4;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        // Función para realizar la actualización del empleado
        function actualizarEmpleado() {
            var idEmpleadoUpdate = document.getElementById("idEmpleadoUpdate").value;
            var nuevosApellidos = document.getElementById("nuevosApellidos").value;

            // Realiza una solicitud AJAX al servlet de actualización
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "ActualizarEmpleadoServlet", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // Actualiza el resultado en la página
                    var resultado = xhr.responseText;
                    alert(resultado); // Puedes mostrar el resultado de otras formas, como actualizar una etiqueta en la página
                }
            };
            xhr.send("idEmpleadoUpdate=" + idEmpleadoUpdate + "&nuevosApellidos=" + nuevosApellidos);
        }
        
     // Función para eliminar un empleado
        function eliminarEmpleado() {
            var idEmpleadoDelete = document.getElementById("idEmpleadoDelete").value;

            // Realiza una solicitud AJAX al servlet de eliminación
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "EliminarEmpleadoServlet", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // Actualiza el resultado en la página
                    var resultado = xhr.responseText;
                    alert(resultado); // Puedes mostrar el resultado de otras formas, como actualizar una etiqueta en la página
                }
            };
            xhr.send("idEmpleadoDelete=" + idEmpleadoDelete);
        }
        
    </script>
</head>
<body>

    <h1>Formulario CRUD de Empleado</h1>
    
    <!-- Formulario para Crear Empleado -->
    <h2>Crear Empleado</h2>
    <form action="CrearEmpleado" method="post">
        <label for="apellidos">Apellidos:</label>
        <input type="text" name="apellidos" id="apellidos">
        <br>
        <label for="nombres">Nombres:</label>
        <input type="text" name="nombres" id="nombres">
        <br>
        <label for="edad">Edad:</label>
        <input type="number" name="edad" id="edad">
        <br>
        <label for="sexo">Sexo:</label>
        <input type="text" name="sexo" id="sexo">
        <br>
        <label for="salario">Salario:</label>
        <input type="number" name="salario" id="salario">
        <br>
        <input type="submit" value="Crear Empleado">
    </form>

    <!-- Formulario para Leer Empleado por ID -->
    <h2>Leer Empleado por ID</h2>
    <form action="LeerEmpleado" method="get">
        <label for="idEmpleado">ID Empleado:</label>
        <input type="number" name="idEmpleado" id="idEmpleado">
        <br>
        <input type="submit" value="Leer Empleado">
    </form>

    <!-- Formulario para Actualizar Empleado por ID -->
    <h2>Actualizar Empleado por ID</h2>
    <form>
        <label for="idEmpleadoUpdate">ID Empleado:</label>
        <input type="number" name="idEmpleadoUpdate" id="idEmpleadoUpdate">
        <br>
        <label for="nuevosApellidos">Nuevos Apellidos:</label>
        <input type="text" name="nuevosApellidos" id="nuevosApellidos">
        <br>
        <input type="submit" value="Actualizar Empleado" onclick="actualizarEmpleado()">
    </form>

    <!-- Formulario para Eliminar Empleado por ID -->
    <h2>Eliminar Empleado por ID</h2>
    <form>
        <label for="idEmpleadoDelete">ID Empleado:</label>
        <input type="number" name="idEmpleadoDelete" id="idEmpleadoDelete">
        <br>
        <input type="submit" value="Eliminar Empleado" onclick="eliminarEmpleado()">
    </form>
    
    <h2>Listado de Empleados</h2>
	<table border="1">
	    <tr>
	        <th>ID</th>
	        <th>Apellidos</th>
	        <th>Nombres</th>
	        <th>Edad</th>
	        <th>Sexo</th>
	        <th>Salario</th>
	    </tr>
	    <c:forEach items="${empleados}" var="empleado">
	        <tr>
	            <td>${empleado.idEmpleado}</td>
	            <td>${empleado.apellidos}</td>
	            <td>${empleado.nombres}</td>
	            <td>${empleado.edad}</td>
	            <td>${empleado.sexo}</td>
	            <td>${empleado.salario}</td>
	        </tr>
	    </c:forEach>
	</table>
	
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario CRUD de Empleado</title>
</head>
<body>
    <h1>Formulario CRUD de Empleado</h1>

    <!-- Formulario para Crear Empleado -->
    <h2>Crear Empleado</h2>
    <form action="CrearEmpleado" method="post">
        Apellidos: <input type="text" name="apellidos"><br>
        Nombres: <input type="text" name="nombres"><br>
        Edad: <input type="number" name="edad"><br>
        Sexo: <input type="text" name="sexo"><br>
        Salario: <input type="number" name="salario"><br>
        <input type="submit" value="Crear Empleado">
    </form>

    <!-- Formulario para Leer Empleado por ID -->
    <h2>Leer Empleado por ID</h2>
    <form action="LeerEmpleado" method="get">
        ID Empleado: <input type="number" name="idEmpleado"><br>
        <input type="submit" value="Leer Empleado">
    </form>

    <!-- Formulario para Actualizar Empleado por ID -->
    <h2>Actualizar Empleado por ID</h2>
    <form action="ActualizarEmpleado" method="post">
        ID Empleado: <input type="number" name="idEmpleado"><br>
        Nuevos Apellidos: <input type="text" name="apellidos"><br>
        <input type="submit" value="Actualizar Empleado">
    </form>

    <!-- Formulario para Eliminar Empleado por ID -->
    <h2>Eliminar Empleado por ID</h2>
    <form action="EliminarEmpleado" method="post">
        ID Empleado: <input type="number" name="idEmpleado"><br>
        <input type="submit" value="Eliminar Empleado">
    </form>
</body>
</html>
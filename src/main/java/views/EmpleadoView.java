package views;

import controllers.EmpleadoController;

public class EmpleadoView {
	
	public static void main (String[] args) {
		
		String empleado;
		//---Metodo CreateEmpleado--------------------------------------------------
	    empleado= new EmpleadoController().createEmpleado("Rene","Villacorta",29,"Femenino",1000);
	    empleado= new EmpleadoController().createEmpleado("Rene","Villacorta",29,"Femenino",1000);
	    empleado= new EmpleadoController().createEmpleado("Rene","Villacorta",29,"Femenino",1000);
		
		//---Metodo DeleteEmpleado--------------------------------------------------
	    empleado= new EmpleadoController().deleteEmpleado(1);
	    empleado= new EmpleadoController().deleteEmpleado(3);
		
		
		//---Metodo UpdateEmpleado--------------------------------------------------
	    empleado= new EmpleadoController().updateEmpleado(2,"Carla");
	    empleado= new EmpleadoController().updateEmpleado(4,"Sthefany");
		
		//---Metodo GetEmpleado--------------------------------------------------
		empleado= new EmpleadoController().getEmpleado(2);
		empleado= new EmpleadoController().getEmpleado(4);
		
		System.out.print(empleado);
	}
}

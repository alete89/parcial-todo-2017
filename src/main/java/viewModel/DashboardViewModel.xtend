package viewModel

import java.util.ArrayList
import java.util.List
import model.Repo
import model.Tarea
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class DashboardViewModel {
	Tarea tareaSeleccionada
	String descripcion
	String descripcionEditada
	List<Tarea> tareas = new ArrayList()
	
	def crearTarea(){
		Repo.instance.agregarTarea(new Tarea(this.descripcion))
		setTareas
	}
	
	def void setTareas(){
		this.tareas = new ArrayList()
		this.tareas = Repo.instance.tareas
	}
	
	def void toggleListo() {
		tareaSeleccionada.toggleListo
	}
	
	def void editarDescripcion(){
		tareaSeleccionada.editarDescripcion(this.descripcionEditada)
	}
	
}
package viewModel

import java.util.ArrayList
import java.util.List
import model.Tarea
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable
import model.Repo
import org.uqbar.commons.model.utils.ObservableUtils

@Accessors
@Observable
class DashboardViewModel {
	Tarea tareaSeleccionada
	String descripcion
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
	
}
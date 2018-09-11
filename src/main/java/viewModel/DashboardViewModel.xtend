package viewModel

import java.util.ArrayList
import java.util.List
import model.Tarea
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable
import model.Repo

@Accessors
@Observable
class DashboardViewModel {
	String descripcion
	List<Tarea> tareas = new ArrayList()
	
	def crearTarea(){
		Repo.instance.agregarTarea(new Tarea(this.descripcion))
	}
	
	def setTareas(){
		this.tareas = Repo.instance.tareas
	}
}
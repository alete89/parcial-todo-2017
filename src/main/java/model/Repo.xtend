package model

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Repo {
	static Repo instanciaUnica
	List<Tarea> tareas = new ArrayList()
	
	private new(){}
	
	def static getInstance(){
		if(instanciaUnica === null){
			instanciaUnica = new Repo
		}
		instanciaUnica
	}
	
	def agregarTarea(Tarea nuevaTarea){
		tareas.add(nuevaTarea)
	}
	
	def borrarTarea(Tarea tarea){
		tareas.remove(tarea)
	}
	
}
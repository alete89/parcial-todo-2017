package model

import java.util.List
import java.util.ArrayList

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
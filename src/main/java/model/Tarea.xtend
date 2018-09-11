package model

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Tarea {
	String descripcion
	Boolean listo
	
	new(){}
	new(String descripcion, Boolean listo){
		this.descripcion = descripcion
		this.listo = listo
	}
	
	def toggleListo(){
		this.listo = !this.listo
	}
	def editarDescripcion(String nuevaDescripcion){
		this.descripcion = nuevaDescripcion
	}
}
package view

import org.uqbar.arena.Application
import model.Repo
import model.Tarea
import viewModel.DashboardViewModel

class Program extends Application {
	
	override protected createMainWindow() {
		Repo.instance.agregarTarea(new Tarea("hacer algo"))
		val viewModel = new DashboardViewModel
		viewModel.setTareas
		new DashboardWindow(this, viewModel)
	}
	
	static def main(String[] args){
		new Program().start
	}
	
}
package view

import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.Window
import org.uqbar.arena.windows.WindowOwner
import viewModel.DashboardViewModel

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.tables.Table
import model.Tarea
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.commons.model.utils.ObservableUtils

class DashboardWindow extends Window<DashboardViewModel>{
	
	
	new(WindowOwner owner, DashboardViewModel model) {
		super(owner, model)
	}
	
	override createContents(Panel mainPanel) {
		val superior = new Panel(mainPanel) => [layout = new HorizontalLayout]
		val inferior = new Panel(mainPanel)
		new TextBox(superior) => [
			value <=> "descripcion"
		]
		new Button(superior) => [
			caption = "Agregar tarea"
			onClick[modelObject.crearTarea
				ObservableUtils.firePropertyChanged(modelObject,"descripcion")
			]
		]
		
		new Table<Tarea>(inferior,Tarea) => [
			bindItemsToProperty("tareas")
			numberVisibleRows = 5
			new Column<Tarea>(it) => [
				title = "Descripcion"
				bindContentsToProperty("descripcion")
			]
			new Column<Tarea>(it) => [
				title = "Hecho"
				bindContentsToProperty("listo")
			]
		
		]
	}
	
}
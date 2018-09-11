package model

class Repo {
	static Repo instanciaUnica
	private new(){}
	
	def static getInstance(){
		if(instanciaUnica === null){
			instanciaUnica = new Repo
		}
		instanciaUnica
	}
}
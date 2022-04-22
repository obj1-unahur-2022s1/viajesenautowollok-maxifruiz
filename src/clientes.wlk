import remiseras.*

object ludmila { 
	
	method precioPorKilometro() {
		return 18
	}
	
}

object anaMaria { 
	var estaEstable = true			
	
	method precioPorKilometro() {
		if(estaEstable == !estaEstable){
			return 25
		}else{
			return 30
		} 
	}
	method estaEstable() {
		return estaEstable
	}
	
	method setEstadoEconomico() {
		estaEstable = !estaEstable
	}
}

object teresa { 
	var precioPorKilometro = 22
	
	method precioPorKilometro() {
		return precioPorKilometro
	}
	method CambiarPrecioPorKilometro(valor) {
		precioPorKilometro = valor
	}
}

object melina {
	var paraQuienTrabaja 

	method precioPorKilometro() {
		return paraQuienTrabaja.precioPorKilometro() - 3
	}
	method paraQuienTrabaja(){
		return paraQuienTrabaja
	}
	method setParaQuienTrabaja(cliente) {
		paraQuienTrabaja = cliente
	}
}

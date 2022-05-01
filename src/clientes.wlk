/*
 * Clientes: Bien 
 */
import remiseras.*

object ludmila { 
	
	method precioPorKilometro() {
		return 18
	}
	
}

object anaMaria { 
	var estaEstable = true			
	/* Corrección en la condición
	 * En una variable booleana esta demas compararla con true o false
	 */
	method precioPorKilometro() {
		if(estaEstable){
			return 30
		}else{
			return 25
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
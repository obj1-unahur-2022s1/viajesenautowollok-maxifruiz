import clientes.*

object roxana {  
	
	method precioViaje(cliente, kms) {
		return cliente.precioPorKilometro() * kms
	}	
}

object gabriela { 
	
	method precioViaje(cliente, kms) {
		return (cliente.precioPorKilometro() * kms) * 1.2
	}	
}

object mariela { 
	
	method precioViaje(cliente, kms) {
		return 50.max(cliente.precioPorKilometro() * kms)
	}	
}

object juana { 
	const precioHasta8Kms = 100
	const precioDespuesDe8Kms = 200
	
	method precioViaje(cliente, kms) {
		if(kms < 8) {
			return precioHasta8Kms 
		}else{
			return precioDespuesDe8Kms 
		} 	
	}	
}

object lucia {
	var remiseraQueCubre 
	
	method precioViaje(cliente, kms) {
		return remiseraQueCubre.precioViaje(cliente, kms)
	}
	
	method remiseraQueCubre() {
		return remiseraQueCubre
	}
	method setRemiseraACubrir(remisera) {
		remiseraQueCubre = remisera
	}
}

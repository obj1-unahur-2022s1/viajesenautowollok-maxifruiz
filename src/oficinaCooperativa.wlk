import remiseras.*
import clientes.*

object oficina {
	var primeraOpcion 
	var segundaOpcion 
	var opcionAcambiar
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	method cambiarPrimeraRemiseraPor(remisera) {
		primeraOpcion = remisera
	}
	method cambiarSegundaRemiseraPor(remisera) {
		segundaOpcion = remisera
	}
	method intercambiarRemiseras() {
		
		opcionACambiar = primeraOpcion
		self.cambiarPrimeraRemiseraPor(segundaOpcion)
		self.cambiarSegundaRemiseraPor(opcionACambiar)
	}

	method remiseraElegidaParaViaje(cliente, kms) {
		if(primeraOpcion.precioViaje(cliente, kms) - 30 > segundaOpcion.precioViaje(cliente, kms)){
			return segundaOpcion
		}else{
			return primeraOpcion
		}
	}
}
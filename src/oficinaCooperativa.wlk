/*
 * Oficia: Tenia un error de compilacion
 */
import remiseras.*
import clientes.*

object oficina {
	var primeraOpcion 
	var segundaOpcion 
	/* este atributo no es necesario
	 * var opcionAcambiar
	*/
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
		/*
		 * aca debias llamar al método self.asignarRemiseras(r2,r1)
		 */
		self.asignarRemiseras(segundaOpcion, primeraOpcion)
	}

	method remiseraElegidaParaViaje(cliente, kms) {
		if(primeraOpcion.precioViaje(cliente, kms) - 30 > segundaOpcion.precioViaje(cliente, kms)){
			return segundaOpcion
		}else{
			return primeraOpcion
		}
	}
}
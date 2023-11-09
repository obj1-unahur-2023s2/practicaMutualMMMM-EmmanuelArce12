class Viajes {
	const idiomas= []
	method idioma(idioma){
		idiomas.add(idioma)
	}
	method idioma() = idioma
	method esfuerzo()
	method broncearse()
	method cantidadDeDias()
	method esInteresante() =
		idiomas.size() >1
	
}

class ViajesDePlaya inherits Viajes{
	var property largo
override method cantidadDeDias() = largo / 500
override method esfuerzo() = largo >1200
override method broncearse() = true	
}

class ExcursionALaCiudad inherits Viajes{
	var cantidadDeAtracciones
	method cantidadDeAtracciones(cant){
		cantidadDeAtracciones = cant
	}
override method cantidadDeDias()=	cantidadDeAtracciones / 2
override method esfuerzo()= cantidadDeAtracciones >=5 or cantidadDeAtracciones <=8
override method broncearse()= false
override method esInteresante() = super() or cantidadDeAtracciones == 5
}

class ExcursionesAciudadTropical inherits ExcursionALaCiudad{

override method cantidadDeDias()= super()+1
override method broncearse() = true

}
class SalidaDeTrekking inherits Viajes{
	var property kmDeSendero 
	var cantDeDiaDeSol
override method cantidadDeDias() =kmDeSendero /	50
override method esfuerzo() = kmDeSendero > 80
override method broncearse() = (cantDeDiaDeSol >=100 or cantDeDiaDeSol <= 200)  
								and (kmDeSendero>120)
override method esInteresante() = super() and cantDeDiaDeSol >140
							 	
}
class ClasesDeGimnasia inherits Viajes{
	
override method idioma()= super() == "espaniol"
override method cantidadDeDias()= 1
override method esfuerzo() = true
override method broncearse() =false

}

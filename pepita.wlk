import wollok.game.*
import extras.*
object pepita {

    var property position = game.at( 3, 3 )
	var energia = 100
//	var perseguidor = silvestre
	
	method image() = "pepita.png"

//	method estado() {
//		return if ( self.atrapada() ) "pepita-gris.png" else "pepita.png"
//	}

//	method atrapada() = position == perseguidor.position()

	method positionX() = position.x()

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

}


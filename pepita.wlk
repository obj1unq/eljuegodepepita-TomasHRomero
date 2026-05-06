import wollok.game.*
import extras.*

object pepita {

    var property position = game.at( 5, 2 )
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
		game.removeVisual(comida)
	}



	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

}


import wollok.game.*
import extras.*
object pepita {

    var property position = game.at(3, 3)
	var perseguidor = silvestre
	var energia = 100

	method image() = "pepita" + self.estado() + "png"

	method estado() {
		return if ( self.atrapada() ) "gris" else "libre"
	}

	method atrapada() = position == perseguidor.position()

	method positionX() = position.X()

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


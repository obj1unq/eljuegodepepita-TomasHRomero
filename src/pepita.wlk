import wollok.game.*

object pepita {

    var property position = game.at(3, 3)
	
    method image() = "pepita.png"

	var energia = 100

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


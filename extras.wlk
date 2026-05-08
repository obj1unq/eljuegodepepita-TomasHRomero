import pepita.*

object silvestre {
  const presa = pepita

  method position() = game.at( presa.positionX().max(3), 0)

  method image() = "silvestre.png"

}

object nido {

  method position() = game.at( 5, 8)

  method image() = "nido.png"

}
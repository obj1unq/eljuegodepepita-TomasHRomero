import pepita.*

object arriba {

    method siguiente( posición ) = if ( posición.y() < 0 ) 
                                        posición.up(1)
                                   else 
                                        posición
}

object abajo {

    method siguiente( posición ) = if ( posición.y() > game.height() - 1 ) 
                                        posición.down(1)
                                   else 
                                        posición
}

object izquierda {

    method siguiente( posición ) = if ( posición.x() > 0 ) 
                                        posición.left(1)
                                   else 
                                        posición
}

object derecha {

    method siguiente( posición ) = if ( posición.x() < game.width() - 1 ) 
                                        posición.right(1)
                                   else 
                                        posición
}
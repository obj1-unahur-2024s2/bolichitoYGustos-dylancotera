import personas.*
import objetos.*

object bolichito {
  
  var vidriera = pelota
  var mostrador = madera

  method objetoEnVidriera() = vidriera
  method ojetoEnVidriera(objeto) {vidriera = objeto} 
  method objetoEnMostrador() = mostrador 
  method objetoEnMostrador(objeto) {mostrador = objeto}

  method esBrillante() = vidriera.esBrillante() and mostrador.esBrillante()

  method esMonocromatico() =  vidriera.color() == mostrador.color() 
  
  method esEquilibrado() = mostrador.peso() > vidriera.peso()

  method objetoDeColor(color) = vidriera.color() == color || mostrador.color() == color

  method puedeMejorar() = not self.esEquilibrado() || self.esMonocromatico()

  method puedeOfrecer(persona) = persona.leGusta(vidriera) || persona.leGusta(mostrador) 

}
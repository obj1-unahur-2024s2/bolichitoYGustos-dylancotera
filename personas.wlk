import objetos.*

object rosa {
  method leGusta(objeto) {
    return objeto.peso() <= 2000
  }
}

object estefania {
  method leGusta(objeto) = objeto.esDeColorFuerte()
}

object luisa {
    method leGusta(objeto) = objeto.esDeMaterialBrillante()
}
object juan {
  method leGusta(objeto) = not objeto.esDeColorFuerte() || objeto.peso().between(1200, 1800)
}
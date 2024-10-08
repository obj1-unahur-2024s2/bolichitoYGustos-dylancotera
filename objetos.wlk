// Colores
object rojo {
  method esColorFuerte() = true
}

object verde {
  method esColorFuerte() = true
}

object celeste {
  method esColorFuerte() = false
}

object pardo {
  method esColorFuerte() = false
}

object naranja {
  method esColorFuerte() = true
}

// Materiales
object cobre {
  method esBrillante() = true
}

object vidrio {
  method esBrillante() = true
}

object lino {
  method esBrillante() = false
}

object madera {
  method esBrillante() = false
}

object cuero {
  method esBrillante() = false
}

// Objetos

object remera {

  method color() = rojo
  method material() = lino
  method peso() = 800
  method esDeColorFuerte() {self.color().esColorFuerte()}
  method esDeMaterialBrillante() {self.material().esBrillante()}
}

object pelota {

  method color() = pardo
  method material() = cuero
  method peso() = 1300
  method esDeColorFuerte() {self.color().esColorFuerte()}
  method esDeMaterialBrillante() {self.material().esBrillante()}
}

object biblioteca {

  method color() = verde
  method material() = madera
  method peso() = 8000
  method esDeColorFuerte() {self.color().esColorFuerte()}
  method esDeMaterialBrillante() {self.material().esBrillante()}
}

object muneco {
  var peso = 0

  method color() = celeste
  method material() = vidrio
  method peso() = peso
  method peso(unPeso) {peso = unPeso}
  method esDeColorFuerte() {self.color().esColorFuerte()}
  method esDeMaterialBrillante() {self.material().esBrillante()}
}

object placa {

  var peso = 0
  var color = rojo

  method material() = cobre
  method peso() = peso
  method peso(unPeso) {peso = unPeso}
  method color() = color
  method color(unColor) {color = unColor}
  method esDeColorFuerte() {self.color().esColorFuerte()}
  method esDeMaterialBrillante() {self.material().esBrillante()}
}

object arito {
  
  method color() = celeste
  method material() = cobre
  method peso() = 180
  method esDeColorFuerte() {self.color().esColorFuerte()}
  method esDeMaterialBrillante() {self.material().esBrillante()}
}

object banquito {

  var color = naranja

  method color() = color
  method color(unColor) {color = unColor}
  method material() = madera
  method peso() =  1700
  method esDeColorFuerte() {self.color().esColorFuerte()}
  method esDeMaterialBrillante() {self.material().esBrillante()}
}

object cajita {
  
  var objetoDentro = arito
   
  method color() = rojo
  method material() = cobre
  method objetoDentro() = objetoDentro
  method objetoDentro(unObjeto) {objetoDentro = unObjeto}
  method peso() = 400 + objetoDentro.peso() 
  method esDeColorFuerte() {self.color().esColorFuerte()}
  method esDeMaterialBrillante() {self.material().esBrillante()}
}
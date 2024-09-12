//colores
object naranja {
    method esFuerte() {
        return true
    }
}
object rojo {
    method esFuerte() {
        return true
    }
}
object verde {
    method esFuerte() {
        return true
    }
}
object celeste {
    method esFuerte() {
        return false
    }
}
object pardo {
    method esFuerte() {
        return false
    }
}
//materiales
object cobre {
    method esBrillante() {
        return true
    }
}
object vidrio {
    method esBrillante() {
        return true
    }
}
object lino {
    method esBrillante() {
        return false
    }
}
object madera {
    method esBrillante() {
        return false
    }
}
object cuero {
    method esBrillante() {
        return false
    }
}
//objetos
object remera {
    method color() {
        return rojo
    }
    method material() {
        return lino
    }
    method peso() {
        return 800
    }
    method esColorFuerte() {
        return self.color().esFuerte() //true
    }
    method esMaterialBrillante() {
        return self.material().esBrillante()
    }
}
object pelota {
    method color() {
        return pardo
    }
    method material() {
        return cuero
    }
    method peso() {
        return 1300
    }
    method esColorFuerte() {
        return self.color().esFuerte() //false
    }
    method esMaterialBrillante() {
        return self.material().esBrillante()
    }
}
object biblioteca {
    method color() {
        return verde
    }
    method material() {
        return madera
    }
    method peso() {
        return 8000
    }
    method esColorFuerte() {
        return self.color().esFuerte() //true
    }
    method esMaterialBrillante() {
        return self.material().esBrillante()
    }
}
object munieco {
    var peso = 0
    method peso() = peso //getter
    method peso(unPeso) { //setter
        peso = unPeso
    }
    method color() {
        return celeste
    }
    method material() {
        return vidrio
    }
    method esColorFuerte() {
        return self.color().esFuerte() //false
    }
    method esMaterialBrillante() {
        return self.material().esBrillante()
    }
}
object placa {
    var color = rojo
    var peso = 0
    method color() = color //getter, consulta
    method color(unColor) { //setter, indicacion
        color = unColor
    }
    method peso() = peso //getter
    method peso(unPeso) { //setter
        peso = unPeso
    }
    method material() {
        return cobre
    }
    method esMaterialBrillante() {
        return self.material().esBrillante()
    }
}
object arito {
    method color() {
        return celeste
    }
    method peso() {
        return 180
    }
    method material() {
        return cobre
    }
    method esMaterialBrillante() {
        return self.material().esBrillante()
    }
}
object banquito {
    var color = naranja
    method color() = color //getter, consulta
    method color(unColor) { //setter, indicacion
        color = unColor
    }
    method peso() {
        return 1700
    }
    method material() {
        return madera
    }
    method esMaterialBrillante() {
        return self.material().esBrillante()
    }
}
object cajita {
    var objetoDentro = arito
    var peso = 400 + objetoDentro.peso()
    method peso() = peso
    method objetoDentro() = objetoDentro //getter, consulta
    method objetoDentro(unObjeto) { //setter, indicacion
        objetoDentro = unObjeto
    }
    method color() {
        return rojo
    }
    method material() {
        return cobre
    }
    method esMaterialBrillante() {
        return self.material().esBrillante()
    }
}
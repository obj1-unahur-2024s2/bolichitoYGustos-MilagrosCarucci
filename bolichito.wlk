import personas.*
import objetos.*

object bolichito {
    var objetoEnVidriera = munieco
    var objetoEnMostrador = pelota
    method objetoEnVidriera(unObjeto) {
        objetoEnVidriera = unObjeto
    }
    method objetoEnMostrador(unObjeto) {
        objetoEnMostrador = unObjeto
    }
    method objetoEnVidriera() = objetoEnVidriera
    method objetoEnMostrador() = objetoEnMostrador

    method esBrillante() {
        return objetoEnVidriera.esMaterialBrillante() && objetoEnMostrador.esMaterialBrillante()
    }
    method esMonocromatico() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }
    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    method hayObjetoExhibido(unColor) {
        return objetoEnMostrador.color() == unColor ||
        objetoEnVidriera.color() == unColor
    }
    method puedeMejorar() {
        return !self.estaEquilibrado() || self.esMonocromatico()
    }
    method puedeOfrecer(unaPersona) {
        return unaPersona.leGusta(objetoEnVidriera) ||
        unaPersona.leGusta(objetoEnMostrador)
    }
}
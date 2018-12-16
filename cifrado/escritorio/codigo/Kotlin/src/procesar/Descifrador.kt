package procesar

import alfabeto.Alfabeto
import kotlin.properties.Delegates

class Descifrador(alfabeto: Alfabeto){
    var alfabeto : Alfabeto by Delegates.notNull()

    init {
        this.alfabeto = alfabeto
    }

    fun descifrarCaracter(recorrido:Int,caracter:Char): Char {
        val posicion = alfabeto.obtenerPosicion(caracter)
        if (posicion > 0)
            return alfabeto.obtenerCaracter(posicion-recorrido)
        else
            return caracter
    }

    fun descifrarTexto(recorrido:Int,texto:String): String {
        var textoCifrado = ""
        texto.toCharArray().forEach {
            textoCifrado = textoCifrado + descifrarCaracter(recorrido,it)
        }

        return textoCifrado
    }
}
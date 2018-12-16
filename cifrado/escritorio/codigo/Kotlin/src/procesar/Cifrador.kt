package procesar
import alfabeto.Alfabeto
import kotlin.properties.Delegates

class Cifrador(alfabeto: Alfabeto){
    var alfabeto : Alfabeto by Delegates.notNull()

    init {
        this.alfabeto = alfabeto
    }

    fun cifrarCaracter(recorrido:Int,caracter:Char): Char {
        val posicion = alfabeto.obtenerPosicion(caracter)
        if (posicion > 0)
            return alfabeto.obtenerCaracter(posicion+recorrido)
        else
            return caracter
    }

    fun cifrarTexto(recorrido:Int,texto:String): String {
        var textoCifrado = ""
        texto.toCharArray().forEach {
            textoCifrado = textoCifrado + cifrarCaracter(recorrido,it)

        }

        return textoCifrado
    }
}
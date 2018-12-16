package texto

import kotlin.properties.Delegates

class TextoCifrado(texto:String){
    var texto:String by Delegates.notNull()

    init {
        this.texto = texto
    }

    fun getCaracteres(): CharArray {
        return texto.toCharArray()
    }

    fun getTamanio(): Int {
        return texto.length
    }

    fun mostrarTexto(): String {
        return texto
    }
}
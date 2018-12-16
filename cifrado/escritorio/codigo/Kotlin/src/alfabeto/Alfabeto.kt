package alfabeto

class Alfabeto(){
    val alfabeto = mutableListOf<Char>()

    init {
        llenar(32,127)
        llenar(161,172)
        llenar(173,256)
    }

    fun llenar(inicio:Int,final:Int){
        for (indice in inicio..final){
            alfabeto.add(indice.toChar())
        }
    }

    fun obtenerCaracter(posicion:Int): Char {
        if (posicion >= alfabeto.size)
            return alfabeto[(posicion-alfabeto.size)-1]
        else if (posicion < 0)
            return alfabeto[(alfabeto.size+posicion)+1]
        else
            return alfabeto[posicion]
    }

    fun obtenerPosicion(caracter:Char): Int{
        if (caracter in alfabeto)
            return alfabeto.indexOf(caracter)
        else
            return -1
    }

    fun obtenerTamnio(): Int {
        return alfabeto.size
    }
}
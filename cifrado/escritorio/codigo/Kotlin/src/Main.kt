import alfabeto.Alfabeto
import procesar.Cifrador
import procesar.Descifrador

    fun main(args: Array<String>) {
        val alfabeto = Alfabeto()

        val cifrador = Cifrador(alfabeto)
        val descifrador = Descifrador(alfabeto)
        println(cifrador.cifrarTexto(22,"hola"))
        println(descifrador.descifrarTexto(22,"~¦£w"))


    }

class Descifrador
    
    def initialize(alfabeto)
            @alfabeto = alfabeto
    end

    def descifrarCaracter(recorrido,caracter)
        posicion = @alfabeto.obtenerPosicion(caracter)
        if posicion > 0
            return @alfabeto.obtenerCaracter(posicion-recorrido)
        else
            return caracter
        end
    end

    def descifrarTexto(recorrido,texto)
        textoPlano = ""
        texto.chars.each{
            |caracter| textoPlano = textoPlano + descifrarCaracter(recorrido,caracter)
        }
        return textoPlano
    end
end
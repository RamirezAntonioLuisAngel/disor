class TextoPlano
    def initialize(texto)
        @texto = texto
    end

    def getCaracteres()
        return @texto.chars
    end

    def getTamanio()
        return @texto.chars.length
    end

    def mostrarTexto()
        return @texto
    end
end
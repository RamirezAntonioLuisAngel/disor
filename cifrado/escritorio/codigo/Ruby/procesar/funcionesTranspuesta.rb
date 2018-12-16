require_relative '../alfabeto/Alfabeto.rb'
require_relative 'Cifrador.rb'
require_relative 'Descifrador.rb'

class FuncionesTranspuesta
    $alphabet = Alfabeto.new()
    $cifrador = Cifrador.new($alphabet)

    def procesar(texto, result,espacios,resultTranspuesta,resultTranspuestaA,grupos)
        textoPlano = texto.text
        result.removeText(0, result.length)
        textoCifrado = $cifrador.cifrarTexto(espacios.value,textoPlano)
        result.appendText(textoCifrado)
        transponer(texto,resultTranspuesta)
        transponerAgrupado(texto,resultTranspuestaA,grupos)
    end

    def transponer(texto,result)
        textoPlano = texto.text()
        result.removeText(0, result.length)
        result.appendText(textoPlano.reverse!)
    end

    def transponerAgrupado(texto,result,grupos)
        grupo = grupos.value
        caracteres = texto.text.split('')
        textoAgrupado = ""
        textoCifrado = ""
        if grupo == 1
            transponer(texto,result)
        else
            for indice in(1..caracteres.length)
                if grupo != 0 and indice % grupo == 0
                    textoAgrupado = textoAgrupado << caracteres[indice-1].to_s
                    textoCifrado = textoCifrado + textoAgrupado.reverse!
                    result.removeText(0, result.length)
                    result.appendText(textoCifrado)
                    textoAgrupado = ""
                else
                    textoAgrupado = textoAgrupado +""+ caracteres[indice-1].to_s
                    result.removeText(0, result.length)
                    result.appendText(textoCifrado+textoAgrupado)
                end
            end
        end
    end
end
import javafx.application.Application
import javafx.beans.value.ChangeListener
import javafx.event.EventHandler
import javafx.fxml.FXML
import javafx.fxml.FXMLLoader
import javafx.scene.Scene
import javafx.scene.control.Spinner
import javafx.scene.control.TextField
import javafx.stage.Stage
import javafx.scene.control.SpinnerValueFactory
import javafx.scene.control.TextArea
import procesar.Cifrador
import alfabeto.Alfabeto
import kotlin.properties.Delegates


class KVM: Application(){
    val alfabeto = Alfabeto()
    val cifrador = Cifrador(alfabeto)

    @FXML
    lateinit var TFtextoPlano: TextField
    lateinit var cifradoTA: TextArea
    lateinit var transpuestaTA: TextArea
    lateinit var grupoTA: TextArea
    lateinit var desplazamientoSpinner: Spinner<Int>
    lateinit var gruposSpinner: Spinner<Int>


    override fun start(primaryStage: Stage) {
        primaryStage.scene = Scene(FXMLLoader.load(javaClass.getResource("interfazTranspuesta.fxml")))
        primaryStage.show()
    }


    fun procesar(){
        val tex = TFtextoPlano.text
        var textoCifrado = cifrador.cifrarTexto(desplazamientoSpinner.value,tex)
        cifradoTA.clear()
        cifradoTA.text = textoCifrado
        transPoner()
        transPonerAgrupado()
    }

    fun transPoner(){
        transpuestaTA.clear()
        val tex = TFtextoPlano.text
        transpuestaTA.text = tex.reversed()
    }

    fun transPonerAgrupado(){
        var grupo = gruposSpinner.value
        val tex = TFtextoPlano.text
        var caracteres = tex.toCharArray()
        var textoAgrupado = ""
        var textoCifrado = ""
        if(grupo == 1)
            transPoner()
        else{
            for (indice in 1..caracteres.size){
                if (grupo != 0 && indice % grupo == 0){
                    textoAgrupado = textoAgrupado + caracteres.get(indice-1)
                    textoCifrado = textoCifrado + textoAgrupado.reversed()
                    grupoTA.clear()
                    grupoTA.text = textoCifrado
                    textoAgrupado = ""
                }else{
                    textoAgrupado = textoAgrupado + caracteres[indice-1]
                    grupoTA.clear()
                    grupoTA.text = textoCifrado + textoAgrupado
                }
            }
        }
    }

    companion object {
        @JvmStatic
        fun main(args: Array<String>){
            Application.launch(KVM::class.java,*args)
        }
    }

}
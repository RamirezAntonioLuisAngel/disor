require 'fox16'
require_relative 'procesar/funcionesTranspuesta.rb'
include Fox

class Main < FXMainWindow

    $funciones = FuncionesTranspuesta.new()

    def initialize(app)
        super(app, "Cifrado Cesar", :width => 800, :height => 280)
        hFrame1 = FXHorizontalFrame.new(self)
        textoLabel = FXLabel.new(hFrame1, "Texto  ")
        textoPlanoTF = FXTextField.new(hFrame1, 120)

        #Interfaz Cifrado Cesar
        cifradoCesarFrame = FXVerticalFrame.new(self,:opts => LAYOUT_EXPLICIT,:x => 10,:y => 40, :width => 250, :height => 400)
        cifradoLabel = FXLabel.new(cifradoCesarFrame, "---------------------Cesar---------------------")
        desplazamientoLabel = FXLabel.new(cifradoCesarFrame, "  Dezplazamiento: ")
        desplazamientoSp = FXSpinner.new(cifradoCesarFrame,20,:opts =>LAYOUT_EXPLICIT,:x => 108,:y => 28,:width => 130, :height => 20)
        textoCifradoTA = FXText.new(cifradoCesarFrame,:opts =>LAYOUT_EXPLICIT |TEXT_READONLY | TEXT_WORDWRAP,:x => 8,:y => 70, :width => 228, :height => 147)
        
        #Interfaz Transpuesta
        transpuestaFrame = FXVerticalFrame.new(self,:opts => LAYOUT_EXPLICIT,:x => 275,:y => 40, :width => 250, :height => 400)
        transpuestaLabel = FXLabel.new(transpuestaFrame, "----------------Transpuesta-----------------")
        textoTranspuestaTA = FXText.new(transpuestaFrame,:opts =>LAYOUT_EXPLICIT |TEXT_READONLY | TEXT_WORDWRAP,:x => 8,:y => 50, :width => 228, :height => 167)

        #Interfaz Traspuesta Agrupado
        transpuestaAgrupadoFrame = FXVerticalFrame.new(self,:opts => LAYOUT_EXPLICIT,:x => 535,:y => 40, :width => 250, :height => 400)
        transpuestaAgrupadoLabel = FXLabel.new(transpuestaAgrupadoFrame, "-----------Transpuesta Agrupado------------")
        grupoLabel = FXLabel.new(transpuestaAgrupadoFrame, "  Grupo: ")
        grupoSp = FXSpinner.new(transpuestaAgrupadoFrame,20,:opts =>LAYOUT_EXPLICIT,:x => 108,:y => 28,:width => 130, :height => 20)
        transpuestaGruposTA = FXText.new(transpuestaAgrupadoFrame,:opts =>LAYOUT_EXPLICIT |TEXT_READONLY | TEXT_WORDWRAP,:x => 8,:y => 70, :width => 228, :height => 147)
    
        textoPlanoTF.connect(SEL_KEYRELEASE) do
            $funciones.procesar(textoPlanoTF,textoCifradoTA,desplazamientoSp,textoTranspuestaTA,transpuestaGruposTA,grupoSp)
        end

        desplazamientoSp.connect(SEL_COMMAND) do
            $funciones.procesar(textoPlanoTF,textoCifradoTA,desplazamientoSp,textoTranspuestaTA,transpuestaGruposTA,grupoSp)
        end  

        grupoSp.connect(SEL_COMMAND) do
            $funciones.transponerAgrupado(textoTranspuestaTA,transpuestaGruposTA,grupoSp)
        end 

            
    
    end

    def create
        super
        show(PLACEMENT_SCREEN)
    end
end

    if __FILE__ == $0
        FXApp.new do |app|
          Main.new(app)
          app.create
          app.run
    end

end
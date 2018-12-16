#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Dec 11 21:50:12 2018

@author: hipolito
"""

from paquete_celulas import *

from paquete_tiempo import *

from moderador import *



import sys
from PyQt5 import uic, QtWidgets
qtCreatorFile = "interfaz.ui" # Nombre del archivo aquí.
Ui_MainWindow, QtBaseClass = uic.loadUiType(qtCreatorFile)






class MyApp(QtWidgets.QMainWindow, Ui_MainWindow):
    def __init__(self):
        QtWidgets.QMainWindow.__init__(self)
        Ui_MainWindow.__init__(self)
        self.setupUi(self)
        self.btn_.clicked.connect(self.opciones)
        self.btn_caja.clicked.connect(self.opciones)
    
    
    
    
    def opciones(self):
        texto_gui = str(self.et_texto.toPlainText())
        clave_gui = str(self.et_clave.toPlainText())
        
        self.
        moderador = Moderador(self.caja.text())
        moderar.redimencionar(caja.text())






if __name__ == "__main__":
    app =  QtWidgets.QApplication(sys.argv)
    window = MyApp()
    window.show()
    sys.exit(app.exec_())








#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Dec 11 21:53:10 2018

@author: hipolito
"""

class Celula():
    
    
    def __init__(self,cantidad_vecinos):
        
        self.estado = True
        self.catidad = cantidad_vecinos
        self.vecinos = []
        
        
    def avisar_vecinos(self):
        
        for i in self.vecinos:
            i.cantidad = i.cantidad-1
            i.cambiar_estado()
            
            
    def cambiar_estado(self):
        if vecinos <3:
            self.estado = False
        
        
//
//  Principal2.swift
//  BibliotecaCRUD
//
//  Created by kevin on 2/5/18.
//  Copyright © 2018 kevin. All rights reserved.
//

import Foundation
import Cocoa

class MostrarBiblioteca: Biblioteca {
    
    override init(autor:String,nombre:String,descripcion:String,ISBN:Int) {
        super.init(autor: autor, nombre: nombre, descripcion: descripcion, ISBN: ISBN)
        self.autor = [autor]
        self.nombre = [nombre]
        self.descripcion  = [descripcion]
        self.ISBN = [ISBN]
    }
    
    func Datos() {
        var op = 0
        print("Digite la opcion: ")
        print("1.Agregar libros\n2.Mostrar libros\n3.Buscar libros\n4.Borrar libro")
        op = Int((readLine(strippingNewline: true)!))!
        
        switch op {
        case 1:
            <#code#>
        default:
            <#code#>
        }
    }
}

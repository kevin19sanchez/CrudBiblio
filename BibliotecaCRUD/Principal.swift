//
//  Principal.swift
//  BibliotecaCRUD
//
//  Created by kevin on 2/5/18.
//  Copyright © 2018 kevin. All rights reserved.
//

import Foundation

class Biblioteca {
    var autor: String?
    var nombre: String?
    var descripcion: String?
    var ISBN: Int?
    
    init(autor:String, nombre:String, descripcion:String, ISBN:Int) {
        self.autor = autor
        self.nombre = nombre
        self.descripcion  = descripcion
        self.ISBN = ISBN
    }
    
    
}

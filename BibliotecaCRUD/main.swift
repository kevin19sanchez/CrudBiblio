//
//  main.swift
//  BibliotecaCRUD
//
//  Created by kevin on 2/5/18.
//  Copyright © 2018 kevin. All rights reserved.
//

import Foundation

var libro = [Biblioteca]()
var mostrar = ""
var salir = false

print("BIBLIOTECA")

repeat{
    print("Digite la opcion:")
    print("1.Agregar Libros \n2.Mostrar Libros \n3.Buscar Libros \n4.Borrar libros")
    let op = Int((readLine(strippingNewline: true)!))!
    
    switch op{
    case 1:
        print("Autor: ")
        var aut = String(readLine(strippingNewline: true)!)!
        
        print("Nombre libro: ")
        var nom = String(readLine(strippingNewline: true)!)!
        
        print("Descripcion: ")
        var desc = String(readLine(strippingNewline: true)!)!
        
        print("ISBN: ")
        var isbn = Int(readLine(strippingNewline: true)!)!
        
        libro.append(Biblioteca(autor: aut, nombre: nom, descripcion: desc, ISBN: Int(isbn)))
        break
    case 2:
        for i in libro{
            mostrar += "\(i.autor!) \( i.nombre!) \(i.descripcion!) \( i.ISBN!)\n"
        }
        print(mostrar)
        mostrar = ""
        
        break
    case 3:
        print("Buscar libro: ")
        let busqueda = readLine(strippingNewline: true)!
        for i in libro{
            if(busqueda.caseInsensitiveCompare(i.autor!) == ComparisonResult.orderedSame){
                print("\n\(i.autor!)\n\(i.nombre!)\n\(i.descripcion!)\n\(i.ISBN!)")
            }
        }
        
        break
    case 4:
        print("Borrar libro")
        let borrar = readLine(strippingNewline: true)!
        for i in 0...libro.count-1{
            if(borrar.caseInsensitiveCompare(libro[i].nombre!) == ComparisonResult.orderedSame){
                libro.remove(at: i)
                print("Libro borrado")
            }
        }
        break
    default:
        print("Digite bien")
        break
    }
    print("salir?")
    salir = ((readLine(strippingNewline: true)!) == "n" ? true:false)
}while(salir)


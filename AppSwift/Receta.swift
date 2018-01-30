//
//  Receta.swift
//  AppSwift
//
//  Created by cice on 30/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

import UIKit

class Ingrediente {
    let nombre : String;
    let cantidad : String;
    
    init(nombre : String, cantidad : String) {
        self.nombre = nombre;
        self.cantidad = cantidad;
    }
}

class Receta: NSObject {

    let nombre : String;
    
    var nombreImagen : String?;
    
    var tiempo : Int;
    var ingredientes : [Ingrediente];
    
    var instrucciones : [String];
    
    init(nombre : String) {
        self.nombre = nombre;
        self.tiempo = 0;
        self.ingredientes = [];
        self.instrucciones = [];
    }
}

//
//  BaseDatos.swift
//  AppSwift
//
//  Created by cice on 30/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

import UIKit

class BaseDatos: NSObject {
    
    var recetas = [Receta]();
    
    func cargarDatos() {
        
        let receta = Receta(nombre: "Cocido");
        
        let Ingrediente1 = Ingrediente(nombre: "Garbanzos", cantidad: "1 vaso");
        let Ingrediente2 = Ingrediente(nombre: "Chorizo", cantidad: "1 chorizo");
        let Ingrediente3 = Ingrediente(nombre: "Agua", cantidad: "3 vasos");
        let Ingrediente4 = Ingrediente(nombre: "Morcilla", cantidad: "1 morcilla");
        let Ingrediente5 = Ingrediente(nombre: "Zanahoria", cantidad: "1 zanahoria");
        let Ingrediente6 = Ingrediente(nombre: "Pollo", cantidad: "1/2 pollo");
        
        receta.tiempo = 20;
        
        receta.ingredientes.append(Ingrediente1);
        receta.ingredientes.append(Ingrediente2);
        receta.ingredientes.append(Ingrediente3);
        receta.ingredientes.append(Ingrediente4);
        receta.ingredientes.append(Ingrediente5);
        receta.ingredientes.append(Ingrediente6);
        
        receta.instrucciones.append("Echar todo a la olla");
        receta.instrucciones.append("Cocer un rato");
        
        receta.nombreImagen = "cocido";
        
        
        let Greceta = Receta(nombre: "Gocido");
        
        let GIngrediente1 = Ingrediente(nombre: "Gorbanzos", cantidad: "1 vaso");
        let GIngrediente2 = Ingrediente(nombre: "Gorizo", cantidad: "1 chorizo");
        let GIngrediente3 = Ingrediente(nombre: "Gagua", cantidad: "3 vasos");
        let GIngrediente4 = Ingrediente(nombre: "Gorcilla", cantidad: "1 morcilla");
        let GIngrediente5 = Ingrediente(nombre: "Ganahoria", cantidad: "1 zanahoria");
        let GIngrediente6 = Ingrediente(nombre: "Gollo", cantidad: "1/2 pollo");
        
        Greceta.tiempo = 20;
        
        Greceta.ingredientes.append(GIngrediente1);
        Greceta.ingredientes.append(GIngrediente2);
        Greceta.ingredientes.append(GIngrediente3);
        Greceta.ingredientes.append(GIngrediente4);
        Greceta.ingredientes.append(GIngrediente5);
        Greceta.ingredientes.append(GIngrediente6);
        
        Greceta.instrucciones.append("Gechar todo a la olla");
        Greceta.instrucciones.append("Gocer un rato");
        
        Greceta.nombreImagen = "gocido";
        
        self.recetas.append(receta);
        self.recetas.append(Greceta);
    }

}

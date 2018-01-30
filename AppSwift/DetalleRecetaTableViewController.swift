//
//  DetalleRecetaTableViewController.swift
//  AppSwift
//
//  Created by cice on 30/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

import UIKit

class DetalleRecetaTableViewController: UITableViewController {
    
    @IBOutlet weak var vistaImagen: UIImageView!
    
    var receta : Receta!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = self.receta.nombre;
        self.navigationItem.prompt = "Tiempo \(self.receta.tiempo) minutos";
        
        if let nombreImagen = receta.nombreImagen
        {
            self.vistaImagen.image = UIImage(named: nombreImagen);
        }
        else
        {
            self.vistaImagen.removeFromSuperview();
        }
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return receta.ingredientes.count
        }
        else if section == 1
        {
            return receta.instrucciones.count
        }
        
        return 0;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure the cell...
        if indexPath.section == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "celdaDetalleReceta", for: indexPath)

            let ingrediente = self.receta.ingredientes[indexPath.row];
            cell.textLabel?.text = ingrediente.nombre;
            cell.detailTextLabel?.text = ingrediente.cantidad;
            
            return cell;
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "celdaDetalleReceta2", for: indexPath)

            let instruccion = self.receta.instrucciones[indexPath.row];
            cell.textLabel?.text = instruccion;
            
            return cell;
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {
            return "Ingredientes";
        }
        else if section == 1
        {
            return "Instrucciones";
        }
        
        return nil;
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

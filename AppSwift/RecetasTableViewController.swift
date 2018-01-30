//
//  RecetasTableViewController.swift
//  AppSwift
//
//  Created by cice on 30/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

import UIKit

class RecetasTableViewController: UITableViewController {
    
    let baseDatos = BaseDatos();

    override func viewDidLoad() {
        super.viewDidLoad()
        self.baseDatos.cargarDatos();
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.baseDatos.recetas.count;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaReceta", for: indexPath)

        let receta = self.baseDatos.recetas[indexPath.row];
        cell.textLabel?.text = receta.nombre;
        cell.detailTextLabel?.text = "Tiempo: \(receta.tiempo) minutos";
        
        if let nombreImagen = receta.nombreImagen
        {
            let image = UIImage(named: nombreImagen);
            cell.imageView!.image = image;
        }
        
        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "verReceta"
        {
            // Ejecuta y me devuelve un opconal si hace un '?'. Si es con ! revienta si no hay.
            let escenaDestino = segue.destination as! DetalleRecetaTableViewController;
            let indiceCeldaSeleccionada = self.tableView.indexPathForSelectedRow!
            escenaDestino.receta = self.baseDatos.recetas[indiceCeldaSeleccionada.row];
            
        }
        
    }
    

}

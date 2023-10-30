//
//  ViewController.swift
//  swiftPoo
//
//  Created by Agustin Carbajal on 29/10/2023.
//

import UIKit

class ViewController: UIViewController {

    var tipoAutomovil: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Se ejecuta el siguiente ciclo de vida \(#function)")
        let automovil = Automovil()
        
    }


    @IBAction func crearAutomovilSencillo(_ sender: Any) {
        tipoAutomovil = 0
        performSegue(withIdentifier: "detailView", sender: self)
    }
    
    @IBAction func crearAutomovilMazda(_ sender: Any) {
        tipoAutomovil = 1
        performSegue(withIdentifier: "detailView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destino = segue.destination as? ViewControllerSegundaPantallaViewController{
            destino.tipoAutomovil = self.tipoAutomovil
        }
    }
    
}


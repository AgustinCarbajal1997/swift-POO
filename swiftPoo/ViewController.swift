//
//  ViewController.swift
//  swiftPoo
//
//  Created by Agustin Carbajal on 29/10/2023.
//

import UIKit

class ViewController: UIViewController {

    var tipoAutomovil: Int?
    
    //CICLO DE VIDA DE SCREENS
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Se ejecuta el siguiente ciclo de vida \(#function)")
        _ = Automovil()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Se ejecuta el siguiente ciclo de vida \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Se ejecuta el siguiente ciclo de vida \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Se ejecuta el siguiente ciclo de vida \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Se ejecuta el siguiente ciclo de vida \(#function)")
    }
    //CICLO DE VIDA DE SCREENS
    
    //CICLO DE VIDA DE APP


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


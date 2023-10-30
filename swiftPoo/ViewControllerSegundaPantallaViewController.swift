import UIKit

class ViewControllerSegundaPantallaViewController: UIViewController {

    var tipoAutomovil: Int?
    var automovilNormal: Automovil?
    var automovilElectrico: AutomovilElectrico?
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch tipoAutomovil {
        case 0:
            automovilNormal = Automovil()
            imageView.image = UIImage(named: "automovil")
            labelView.text = "Informacion: Se creo automovil sencillo"
        case 1:
            automovilElectrico = AutomovilElectrico()
            imageView.image = UIImage(named: "ferrari")
            labelView.text = "Informacion: Se creo automovil electrico"
        default:
            print("Error")
        }
        
    }
    

    @IBAction func encender(_ sender: Any) {
        switch tipoAutomovil {
        case 0:
            automovilNormal = Automovil()
            labelView.text = "Informacion:  Se enciende auto sencillo"
        case 1:
            automovilElectrico = AutomovilElectrico()
            labelView.text = "Informacion:  Se enciende auto electrico"
        default:
            print("Error")
        }
    }
    
    @IBAction func apagar(_ sender: Any) {
        switch tipoAutomovil {
        case 0:
            automovilNormal = Automovil()
            labelView.text = "Informacion:  Se apaga auto sencillo"
        case 1:
            automovilElectrico = AutomovilElectrico()
            labelView.text = "Informacion:  Se apaga auto electrico"
        default:
            print("Error")
        }
    }
    
    @IBAction func acelerar(_ sender: Any) {
        switch tipoAutomovil {
        case 0:
            automovilNormal = Automovil()
            labelView.text = "Informacion: Se acelera auto sencillo"
        case 1:
            automovilElectrico = AutomovilElectrico()
            labelView.text = "Informacion:  Se acelera auto electrico"
        default:
            print("Error")
        }
    }
    
}

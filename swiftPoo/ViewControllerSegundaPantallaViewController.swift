import UIKit

class ViewControllerSegundaPantallaViewController: UIViewController {

    var tipoAutomovil: Int?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch tipoAutomovil {
        case 0:
            print("Automovil sencillo")
        case 1:
            print("Automovil Mazda")
        default:
            print("Error")
        }
        
    }
    

    @IBAction func encender(_ sender: Any) {
    }
    
    @IBAction func apagar(_ sender: Any) {
    }
    
    @IBAction func acelerar(_ sender: Any) {
    }
    
}

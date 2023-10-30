import Foundation

class AutomovilElectrico: Automovil {
    var porcentajeBateria = 100
    
    func cargarBateria() -> String{
        porcentajeBateria = 100
        return "Carga exitosa"
    }
}

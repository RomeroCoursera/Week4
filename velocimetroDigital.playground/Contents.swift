//Ejercicio de velocimetro digital

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}



class Auto{
    
    var velocidad : Velocidades = Velocidades(velocidadInicial: .Apagado)
    
    init (velocidad : Velocidades){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String){
        
        var descripcionVelocidad : String
        
        switch self.velocidad {
        case Velocidades.Apagado:
            self.velocidad = .VelocidadBaja
            descripcionVelocidad = "V Baja"
        case Velocidades.VelocidadBaja:
            self.velocidad = .VelocidadMedia
            descripcionVelocidad = "V Media"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            descripcionVelocidad = "V Alta"
        case .VelocidadAlta:
            self.velocidad = .Apagado
            descripcionVelocidad = "Apagado"
        }
        return (self.velocidad.rawValue, descripcionVelocidad)
        
    }
    
}

var coche = Auto(velocidad: .VelocidadAlta)

for i in 1...20{
    print("\(coche.cambioDeVelocidad())")
}


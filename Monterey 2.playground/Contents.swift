//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int{
    
    
    
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        //VelocidadAlta para que empieze por Apagado
        self.velocidad = Velocidades(velocidadIncial: Velocidades.VelocidadAlta)
    }
    
}


class Auto {
    
    var velocidad : Velocidades
    
    init ( ){
        velocidad = Velocidades.apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int ,nombre : String){
        var velocidadEnCadena: string
        switch velocidad{
            
        case Velocidades.apagado:
            velocidad = Velocidades.velocidadBaja
            velocidadEnCadena = "Velocidad baja"
            break
            
        case Velocidades.velocidadBaja:
            velocidad = Velocidades.velocidadMedia
            velocidadEnCadena = "Velocidad media"
            break
        
        case Velocidades.velocidadMedia:
            velocidad = Velocidades.velocidadAlta
            velocidadEnCadena = "Velocidad alta"
            break
            
        case Velocidades.velocidadAlta:
            velocidad = Velocidades.apagado
            velocidadEnCadena = "apagado"
            break
            
        }

        let resultado = (velocidad.rawValue, velocidadEnCadena)
        
        return resultado
       
    }
    
    
}

  var a : Auto  = Auto();

for (var i  = 0 ; i<20 ; i++){
    
    let result = a.cambioDeVelocidad()
    
    print("\(i+1). \(result.actual), \(result.velocidadEnCadena)")

    
}

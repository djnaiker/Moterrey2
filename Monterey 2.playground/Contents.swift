//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int{
    
    
    
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}


class Auto {
    
    var velocidad : Velocidades
    
    init ( ){
        velocidad = Velocidades.apagado
    }
    
    func cambioDeVelocidad(var actual : Int ,  var velocidadEnCadena : String) -> (actual : Int ,nombre : String){
        
    
     
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
        
        actual = velocidad.rawValue
        
        
    
        let resultado = (actual, velocidadEnCadena)
        
        return resultado
       
    }
    
    
}


for (var i  = 0 ; i<20 ; i++){
    
    var a : Auto  = Auto();
    
    let result = a.cambioDeVelocidad(0, velocidadEnCadena: "")
    
    print(result.0 , result.1)

    
}

//
//  Emitter.swift
//  CAEmitters
//
//  Created by Johnstone Ananda on 28/10/2018.
//  Copyright © 2018 Johnstone Ananda. All rights reserved.
//

import UIKit

class Emitter {
    static func get(with image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterCells = generateEmitterCells(with: image)
        
    
        
        //return emitter
        return emitter
    }
    
    
    static func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
        var cells = [CAEmitterCell]()
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 1
        //tell cell how long it should live for
        cell.lifetime = 50
        let velocityRange = [20,21,30,40,50]
        cell.velocity = CGFloat(velocityRange.randomElement() ?? 20)
        //give the icon directions in radians
        cell.emissionLongitude = CGFloat(180 * (3.142/180))
        cell.emissionRange = (45 * (.pi/180))
        
        //play with scale factor of image
        cell.scale = 0.4
        cell.scaleRange = 0.3
        cells.append(cell)
        return cells
    }
    
}

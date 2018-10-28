//
//  ViewController.swift
//  CAEmitters
//
//  Created by Johnstone Ananda on 22/10/2018.
//  Copyright © 2018 Johnstone Ananda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       snowDribbleBalls()
    }

    func snowDribbleBalls(){
        let emitter = Emitter.get(with: UIImage(named: "basketball")!)
        //give it the center from which our balls are coming
        emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: view.frame.width, height: 0)
        
        //add emitter to the view
        view.layer.addSublayer(emitter)
        
    }
    
}


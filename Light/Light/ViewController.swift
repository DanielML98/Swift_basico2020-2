
//  ViewController.swift
//  Light
//
//  Created by Daniel Alejandro on 19/01/20.
//  Copyright © 2020 DAML. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightButton: UIButton!
    var lightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
    func updateUI(){
        
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        }else{
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
}

